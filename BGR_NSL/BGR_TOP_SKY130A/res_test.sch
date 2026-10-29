v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -150 100 -110 {lab=vdd}
N 100 -50 100 -10 {lab=#net1}
N 40 -80 80 -80 {lab=#net1}
N 40 -80 40 -40 {lab=#net1}
N 40 -40 100 -40 {lab=#net1}
C {sky130_fd_pr/res_high_po_1p41.sym} 100 -80 0 0 {name=R1
L=1.41
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {iopin.sym} 100 -150 0 0 {name=p1 lab=vdd}
C {gnd.sym} 100 -10 0 0 {name=l1 lab=0}
