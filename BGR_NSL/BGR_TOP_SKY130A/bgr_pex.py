#!/usr/bin/env python3
"""Post-layout (PEX) flow for BGR_TOP: clean, Magic extraction, temperature and PSRR sweeps."""
import os, sys, csv, glob, shutil, resource, subprocess, argparse
from concurrent.futures import ThreadPoolExecutor
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

# ------------------------- settings -------------------------
TOP      = "BGR_TOP"
GDS      = None                            # None = auto-detect the *.gds in this folder
VDD, VSS, VOUT = "vdd", "vss", "out"       # pin names in the PEX netlist
SEL1, SEL0 = "S1", "S0"                    # select pins
VSUP     = 1.8
CORNERS  = ["tt", "ss", "ff", "sf", "fs"]
SELECTS  = [(0, 0), (0, VSUP), (VSUP, 0), (VSUP, VSUP)]   # (S1, S0) in volts
TMIN, TMAX, TSTEP = -40, 125, 5            # temperature sweep, deg C
AC_TEMP  = 27                              # temperature for PSRR
AC_SWEEP = "dec 20 1 1G"
ALIAS    = {"S1_uq0": "S1"}   # duplicate pin tied to the S1 node
NODESET  = None                            # e.g. 1.0 adds ".nodeset v(out)=1.0"
# ------------------------------------------------------------

PDK_ROOT = os.environ.get("PDK_ROOT", "/foss/pdks")
LIB      = f"{PDK_ROOT}/sky130A/libs.tech/combined/sky130.lib.spice"
MAGICRC  = f"{PDK_ROOT}/sky130A/libs.tech/magic/sky130A.magicrc"
HERE     = os.path.abspath(os.getcwd())
NETLIST  = os.path.join(HERE, f"{TOP}_pex.spice")
OUT      = os.path.join(HERE, "results")
WORK     = os.path.join(OUT, "work")


def _limit_files():
    # Magic 8.3 with Tcl 8.6 crashes on big layouts when the open-file limit is huge
    _, hard = resource.getrlimit(resource.RLIMIT_NOFILE)
    resource.setrlimit(resource.RLIMIT_NOFILE, (1024, hard))


def tag(s1, s0):
    return f"S1_{s1:g}_S0_{s0:g}"


# ------------------------------ cleaning ------------------------------
def clean():
    """Delete generated files only. The GDS, schematics and netlists you made are not touched."""
    subprocess.run(["pkill", "-9", "magic"], stderr=subprocess.DEVNULL)
    files = []
    for pat in ("*.ext", "*.res.ext", "*_pex.spice", "pex.log", "pex_top.tcl",
                "tb_*.spice", "log_*.txt", "vout_*.txt", "psrr_*.txt",
                "/tmp/MAG*"):
        files += glob.glob(pat)
    dirs = glob.glob("PSRR_S1_*") + glob.glob("S1_*_S0_*") + ["results"]
    n = 0
    for f in files:
        try:
            os.remove(f); n += 1
        except OSError:
            pass
    for d in dirs:
        if os.path.isdir(d):
            shutil.rmtree(d, ignore_errors=True); n += 1
    print(f"Cleaned {n} old generated file(s)/folder(s).")


# ---------------------------- extraction ----------------------------
def find_gds():
    if GDS:
        if not os.path.exists(GDS):
            sys.exit(f"GDS not found: {GDS}")
        return GDS
    found = sorted(glob.glob("*.gds"))
    if not found:
        sys.exit("No .gds file in this folder. Save it from KLayout here first.")
    pref = [g for g in found if TOP.lower() in g.lower()]
    pick = pref[0] if pref else found[0]
    if len(found) > 1:
        print(f"Several GDS files found {found}; using {pick}")
    return pick


def extract():
    gds = find_gds()
    clean()
    os.makedirs(OUT, exist_ok=True)
    with open("pex_top.tcl", "w") as f:
        f.write(f"""gds read {gds}
load {TOP}
extract do local
extract do capacitance
extract do coupling
extract all
ext2spice lvs off
ext2spice cthresh 0.01
ext2spice rthresh 0
ext2spice format ngspice
ext2spice -o {os.path.basename(NETLIST)}
quit -noprompt
""")
    cmd = ["magic", "-dnull", "-noconsole", "-T", "sky130A", "-rcfile", MAGICRC, "pex_top.tcl"]
    print(f"Running Magic extraction on {gds} ...")
    with open("pex.log", "w") as log:
        subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT, preexec_fn=_limit_files)
    text = open("pex.log").read()
    if not os.path.exists(NETLIST) or "exttospice finished" not in text:
        sys.exit("Extraction failed. Last lines of pex.log:\n" + "\n".join(text.splitlines()[-15:]))
    print(f"Extraction done: {os.path.basename(NETLIST)} written, "
          f"{text.count('electrically shorted')} shorted-port warning(s).")
    check_ports()


def ports():
    """Pin order of the top subckt, read from the PEX netlist."""
    if not os.path.exists(NETLIST):
        sys.exit(f"{NETLIST} not found. Run './bgr_pex.py extract' first.")
    pins, found = [], False
    for line in open(NETLIST):
        s = line.strip()
        if not found:
            t = s.split()
            if len(t) >= 2 and t[0].lower() == ".subckt" and t[1] == TOP:
                pins, found = t[2:], True
        elif s.startswith("+"):
            pins += s[1:].split()
        else:
            break
    if not pins:
        sys.exit(f"No .subckt {TOP} line in {NETLIST}")
    return pins


def check_ports():
    p = ports()
    print("Ports:", " ".join(p))
    names = {x.lower() for x in p}
    need = {VDD.lower(), VSS.lower(), VOUT.lower(), SEL0.lower(), SEL1.lower()}
    missing = need - names
    extra = names - need
    if missing:
        sys.exit(f"Pins missing from {TOP}: {sorted(missing)}. Edit the pin names in the settings block.")
    if extra:
        print(f"WARNING: extra pins with no driver in the testbench: {sorted(extra)}")


# ---------------------------- simulation ----------------------------
def testbench(kind, corner, s1, s0, datafile):
    nodeset = f".nodeset v({VOUT})={NODESET}\n" if NODESET is not None else ""
    if kind == "tc":
        extra = ""
        vsup = f"Vsup {VDD} 0 DC {VSUP}\n"
        ctl = f"dc temp {TMIN} {TMAX} {TSTEP}\nwrdata {datafile} v({VOUT})\n"
    else:
        extra = f".temp {AC_TEMP}\n"
        vsup = f"Vsup {VDD} 0 DC {VSUP} AC 1\n"
        ctl = f"ac {AC_SWEEP}\nlet psrr = -vdb({VOUT})\nwrdata {datafile} psrr\n"
    return (f"* PEX {kind} corner={corner} S1={s1} S0={s0}\n"
            f".lib {LIB} {corner}\n"
            f".include {NETLIST}\n"
            f"{extra}{vsup}"
            f"Vgnd {VSS} 0 DC 0\n"
            f"Vsel0 {SEL0} 0 DC {s0}\n"
            f"Vsel1 {SEL1} 0 DC {s1}\n"
            f"Xdut {' '.join(ALIAS.get(p, p) for p in ports())} {TOP}\n"
            f"{nodeset}"
            f".control\n{ctl}.endc\n.end\n")


def run_one(job):
    kind, corner, s1, s0 = job
    name = f"{kind}_{tag(s1, s0)}_{corner}"
    data = os.path.join(WORK, f"{name}.txt")
    tb = os.path.join(WORK, f"tb_{name}.spice")
    log = os.path.join(WORK, f"log_{name}.txt")
    with open(tb, "w") as f:
        f.write(testbench(kind, corner, s1, s0, data))
    with open(log, "w") as lf:
        subprocess.run(["ngspice", "-b", tb], stdout=lf, stderr=subprocess.STDOUT)
    ok = os.path.exists(data) and os.path.getsize(data) > 0
    if not ok:
        print(f"  FAILED: {name}  (see {log})")
    return name, ok


def run_all(kind):
    check_ports()
    os.makedirs(WORK, exist_ok=True)
    for f in glob.glob(os.path.join(WORK, f"*{kind}_*")):
        os.remove(f)
    jobs = [(kind, c, s1, s0) for (s1, s0) in SELECTS for c in CORNERS]
    print(f"Running {len(jobs)} {kind.upper()} simulations ...")
    with ThreadPoolExecutor(max_workers=os.cpu_count() or 2) as ex:
        res = list(ex.map(run_one, jobs))
    print(f"  {sum(ok for _, ok in res)}/{len(jobs)} succeeded")


def load(kind, corner, s1, s0):
    p = os.path.join(WORK, f"{kind}_{tag(s1, s0)}_{corner}.txt")
    if not os.path.exists(p) or os.path.getsize(p) == 0:
        return None
    d = np.loadtxt(p)
    return d[:, 0], d[:, 1]


# ------------------------------ results ------------------------------
COLS = {"tt": "C0", "ss": "C3", "ff": "C2", "sf": "C1", "fs": "C4"}


def report_tc():
    fig, axs = plt.subplots(2, 2, figsize=(12, 8), sharex=True)
    rows = []
    for ax, (s1, s0) in zip(axs.flat, SELECTS):
        for c in CORNERS:
            r = load("tc", c, s1, s0)
            if r is None:
                continue
            t, v = r
            span = v.max() - v.min()
            tc = span / (v.mean() * (t.max() - t.min())) * 1e6
            rows.append([f"{s1:g}", f"{s0:g}", c, f"{np.interp(27, t, v):.5f}", f"{span*1e3:.3f}", f"{tc:.1f}"])
            ax.plot(t, v, color=COLS[c], label=c)
        ax.set_title(f"S1={s1:g} V, S0={s0:g} V")
        ax.grid(True)
        ax.set_ylabel("Vout (V)")
        ax.legend(fontsize=8)
    for ax in axs[1]:
        ax.set_xlabel("Temperature (°C)")
    fig.suptitle(f"{TOP} post-layout: Vout vs temperature, VDD = {VSUP} V")
    fig.tight_layout()
    fig.savefig(os.path.join(OUT, "vout_vs_temp.png"), dpi=150)
    with open(os.path.join(OUT, "tc_summary.csv"), "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["S1_V", "S0_V", "corner", "Vout_27C_V", "span_mV", "TC_ppm_per_C"])
        w.writerows(rows)
    print("\nTemperature sweep (S1, S0, corner, Vout@27C, span mV, TC ppm/C)")
    for r in rows:
        print("  ", *r)


def report_psrr():
    fig, axs = plt.subplots(2, 2, figsize=(12, 8), sharex=True)
    rows = []
    for ax, (s1, s0) in zip(axs.flat, SELECTS):
        for c in CORNERS:
            r = load("psrr", c, s1, s0)
            if r is None:
                continue
            f, v = r
            p = [np.interp(np.log10(x), np.log10(f), v) for x in (f[0], 1e3, 1e6)]
            rows.append([f"{s1:g}", f"{s0:g}", c] + [f"{x:.2f}" for x in p])
            ax.semilogx(f, v, color=COLS[c], label=c)
        ax.set_title(f"S1={s1:g} V, S0={s0:g} V")
        ax.grid(True, which="both")
        ax.set_ylabel("PSRR (dB)")
        ax.legend(fontsize=8)
    for ax in axs[1]:
        ax.set_xlabel("Frequency (Hz)")
    fig.suptitle(f"{TOP} post-layout: PSRR, {AC_TEMP} °C, VDD = {VSUP} V")
    fig.tight_layout()
    fig.savefig(os.path.join(OUT, "psrr.png"), dpi=150)
    with open(os.path.join(OUT, "psrr_summary.csv"), "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["S1_V", "S0_V", "corner", "PSRR_1Hz_dB", "PSRR_1kHz_dB", "PSRR_1MHz_dB"])
        w.writerows(rows)
    print("\nPSRR (S1, S0, corner, dB @1Hz, @1kHz, @1MHz)")
    for r in rows:
        print("  ", *r)


# -------------------------------- main --------------------------------
if __name__ == "__main__":
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("step", nargs="?", default="all",
                    choices=["clean", "extract", "tc", "psrr", "sweeps", "all"],
                    help="clean | extract | tc | psrr | sweeps (tc+psrr) | all (clean+extract+tc+psrr)")
    step = ap.parse_args().step
    if step == "clean":
        clean(); sys.exit(0)
    os.makedirs(OUT, exist_ok=True)
    if step in ("extract", "all"):
        extract()
    if step in ("tc", "sweeps", "all"):
        run_all("tc");   report_tc()
    if step in ("psrr", "sweeps", "all"):
        run_all("psrr"); report_psrr()
    print(f"\nResults are in {OUT}")
