import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(9,5.5))
cols = {"tt":"C0","ss":"C3","ff":"C2","sf":"C1","fs":"C4"}
for mode, ls in (("sch","--"),("pex","-")):
    for c in cols:
        try:
            d = np.loadtxt(f"vout_{mode}_{c}.txt")
        except OSError:
            continue
        t, v = d[:,0], d[:,1]
        tc = (v.max()-v.min())/(v.mean()*(t.max()-t.min()))*1e6
        print(f"{mode} {c}: Vout(27C)={np.interp(27,t,v):.4f} V  span={1e3*(v.max()-v.min()):.2f} mV  TC={tc:.1f} ppm/C")
        ax.plot(t, v, ls, color=cols[c], label=f"{mode} {c}")
ax.set_xlabel("Temperature (°C)")
ax.set_ylabel("Vout (V)")
ax.set_title("BGR_TOP: schematic (dashed) vs post-layout PEX (solid), VDD = 1.8 V")
ax.grid(True)
ax.legend(ncol=2, fontsize=8)
fig.savefig("vout_vs_temp.png", dpi=150)
