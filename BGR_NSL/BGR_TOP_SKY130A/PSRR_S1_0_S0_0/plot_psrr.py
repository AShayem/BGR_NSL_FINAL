import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
corners = ["tt", "ss", "ff", "sf", "fs"]
cols = {"tt": "C0", "ss": "C3", "ff": "C2", "sf": "C1", "fs": "C4"}
titles = {"sch": "schematic (pre-layout)", "pex": "post-layout (PEX)"}
def load(mode, c):
    try:
        d = np.loadtxt(f"psrr_{mode}_{c}.txt")
    except OSError:
        return None
    f = d[:, 0]
    v = d[:, 2] if d.shape[1] >= 4 else d[:, 1]
    return f, v
for mode in ("sch", "pex"):
    fig, ax = plt.subplots(figsize=(8, 5))
    print(f"--- {titles[mode]} --- PSRR (dB) at 1 Hz / 1 kHz / 1 MHz")
    for c in corners:
        r = load(mode, c)
        if r is None:
            continue
        f, v = r
        p = [np.interp(np.log10(x), np.log10(f), v) for x in (f[0], 1e3, 1e6)]
        print(f"{c}: {p[0]:.1f} / {p[1]:.1f} / {p[2]:.1f}")
        ax.semilogx(f, v, color=cols[c], label=c)
    ax.set_xlabel("Frequency (Hz)")
    ax.set_ylabel("PSRR (dB)")
    ax.set_title(f"BGR_TOP {titles[mode]}, 27 °C, VDD = 1.8 V")
    ax.grid(True, which="both")
    ax.legend()
    fig.savefig(f"psrr_{mode}.png", dpi=150)
    plt.close(fig)
