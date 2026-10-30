#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# ---- EDIT THIS: old PEX output to delete (relative paths only) ----
PEX_PATHS=(pex)
# -------------------------------------------------------------------

echo "### 1/4  Deleting old PEX and results"
for p in "${PEX_PATHS[@]}" results; do
  [ -e "$p" ] && { echo "  removing $p"; rm -rf -- "$p"; }
done
mkdir -p results
exec > >(tee results/full_report.txt) 2>&1   # everything below is also saved

echo "### 2/4  Fresh PEX extraction + all sweeps"
./bgr_pex.py all

echo "### 3/4  Result tables"
python3 - << 'PY'
import csv, sys
def table(path, title, cols, unit):
    rows = list(csv.DictReader(open(path)))
    corners = ["tt", "ss", "ff", "sf", "fs"]
    print(f"\n=== {title} ===")
    for col, label in cols:
        print(f"\n{label} ({unit[col]})")
        print(f"{'S1/S0 (V)':<12}" + "".join(f"{c:>10}" for c in corners))
        seen = []
        for r in rows:
            k = (r["S1_V"], r["S0_V"])
            if k not in seen: seen.append(k)
        for k in seen:
            vals = {r["corner"]: r[col] for r in rows if (r["S1_V"], r["S0_V"]) == k}
            print(f"{k[0]+'/'+k[1]:<12}" + "".join(f"{vals.get(c,'-'):>10}" for c in corners))
try:
    table("results/tc_summary.csv", "TEMPERATURE SWEEP, -40 to 125 C",
          [("Vout_27C_V", "Vout at 27 C"), ("span_mV", "Vout span over temperature"),
           ("TC_ppm_per_C", "Temperature coefficient")],
          {"Vout_27C_V": "V", "span_mV": "mV", "TC_ppm_per_C": "ppm/C"})
    table("results/psrr_summary.csv", "PSRR, 27 C",
          [("PSRR_1Hz_dB", "PSRR at 1 Hz"), ("PSRR_1kHz_dB", "PSRR at 1 kHz"),
           ("PSRR_1MHz_dB", "PSRR at 1 MHz")],
          {"PSRR_1Hz_dB": "dB", "PSRR_1kHz_dB": "dB", "PSRR_1MHz_dB": "dB"})
except FileNotFoundError as e:
    sys.exit(f"Missing {e.filename}. The sweeps did not produce it.")
PY

echo "### 4/4  Summary"
python3 - << 'PY'
import csv, sys
TC_LIMIT = 33.0
PSRR_COL = "PSRR_1kHz_dB"
CORNERS  = ["tt", "ss", "ff", "sf", "fs"]
try:
    tc = list(csv.DictReader(open("results/tc_summary.csv")))
    ps = list(csv.DictReader(open("results/psrr_summary.csv")))
except FileNotFoundError as e:
    sys.exit(f"Missing {e.filename}.")
key = lambda r: (r["S1_V"], r["S0_V"], r["corner"])
tc_of = {key(r): float(r["TC_ppm_per_C"]) for r in tc}
vo_of = {key(r): float(r["Vout_27C_V"]) for r in tc}
ps_of = {key(r): float(r[PSRR_COL]) for r in ps}
def line(t, k, v, u):
    print(f"  {t:<10}{v:>9.2f} {u:<7}  S1={k[0]} V, S0={k[1]} V, corner {k[2]}")

print("\n=== SUMMARY: MAX / MIN ===")
kmin = min(tc_of, key=tc_of.get); kmax = max(tc_of, key=tc_of.get)
print("Temperature coefficient (-40 to 125 C)")
line("min TC", kmin, tc_of[kmin], "ppm/C"); line("max TC", kmax, tc_of[kmax], "ppm/C")
for col, name in (("PSRR_1Hz_dB","1 Hz"),("PSRR_1kHz_dB","1 kHz"),("PSRR_1MHz_dB","1 MHz")):
    d = {key(r): float(r[col]) for r in ps}
    lo = min(d, key=d.get); hi = max(d, key=d.get)
    print(f"PSRR at {name}")
    line("min PSRR", lo, d[lo], "dB"); line("max PSRR", hi, d[hi], "dB")

print(f"\n=== CASES WITH TC < {TC_LIMIT:g} ppm/C (sorted by TC) ===")
good = sorted((k for k in tc_of if tc_of[k] < TC_LIMIT), key=tc_of.get)
if good:
    print(f"{'S1 (V)':<8}{'S0 (V)':<8}{'corner':<8}{'TC ppm/C':>10}{'Vout@27C':>11}{'PSRR@'+PSRR_COL[5:-3]:>13}")
    for k in good:
        print(f"{k[0]:<8}{k[1]:<8}{k[2]:<8}{tc_of[k]:>10.1f}{vo_of[k]:>11.4f}{ps_of.get(k, float('nan')):>13.2f}")
    print(f"\n{len(good)} of {len(tc_of)} cases pass.")
else:
    print("None. Lowest TC is %.1f ppm/C." % tc_of[kmin])

print(f"\n=== PASS / FAIL BY SELECT SETTING (TC < {TC_LIMIT:g} ppm/C) ===")
print(f"{'S1/S0 (V)':<12}" + "".join(f"{c:>9}" for c in CORNERS) + f"{'worst TC':>11}   verdict")
sels = []
for k in tc_of:
    if k[:2] not in sels: sels.append(k[:2])
for s in sels:
    cells, worst, ok = [], 0.0, True
    for c in CORNERS:
        v = tc_of.get(s + (c,))
        if v is None: cells.append("-"); continue
        worst = max(worst, v); ok &= v < TC_LIMIT
        cells.append(f"{v:.1f}" + ("" if v < TC_LIMIT else "*"))
    print(f"{s[0]+'/'+s[1]:<12}" + "".join(f"{x:>9}" for x in cells) + f"{worst:>11.1f}   " + ("PASS all corners" if ok else "FAIL"))
print("(* = TC at or above the limit)")

with open("results/summary_tc_below_limit.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["S1_V","S0_V","corner","TC_ppm_per_C","Vout_27C_V",PSRR_COL])
    for k in good: w.writerow([k[0],k[1],k[2],tc_of[k],vo_of[k],ps_of.get(k,"")])
print("\nSaved: results/summary_tc_below_limit.csv")
PY

echo; echo "Done. Full log: results/full_report.txt"
