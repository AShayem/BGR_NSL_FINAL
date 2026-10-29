v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -280 120 -280 {lab=Core_Out}
N -150 -180 -150 -160 {lab=inN}
N 160 -210 160 -160 {lab=Core_Out}
N 160 -100 160 -20 {lab=#net1}
N 160 220 160 270 {lab=#net2}
N -210 300 -190 300 {lab=vss}
N -150 330 -150 390 {lab=vss}
N -230 300 -230 390 {lab=vss}
N 200 300 220 300 {lab=vss}
N 160 330 160 390 {lab=vss}
N -150 -180 -80 -180 {lab=inN}
N 110 -280 110 -230 {lab=Core_Out}
N -80 -340 -80 -280 {lab=inP}
N 160 -190 280 -190 {lab=Core_Out}
N 160 -330 160 -310 {lab=vdd}
N -150 -320 -150 -310 {lab=vdd}
N -80 -180 -80 -130 {lab=inN}
N 160 -440 160 -330 {lab=vdd}
N -150 -440 -150 -320 {lab=vdd}
N 110 -230 160 -230 {lab=Core_Out}
N 160 -280 200 -280 {lab=vdd}
N 200 -330 200 -280 {lab=vdd}
N 160 -330 200 -330 {lab=vdd}
N -170 -280 -150 -280 {lab=vdd}
N -170 -320 -170 -280 {lab=vdd}
N -170 -320 -150 -320 {lab=vdd}
N -210 -130 -150 -130 {lab=vss}
N -210 -130 -210 120 {lab=vss}
N 160 -130 230 -130 {lab=vss}
N 230 -130 230 120 {lab=vss}
N 100 190 140 190 {lab=vss}
N 100 190 100 390 {lab=vss}
N 0 -470 0 -440 {lab=vdd}
N 220 300 230 300 {lab=vss}
N 220 300 220 390 {lab=vss}
N -80 -130 120 -130 {lab=inN}
N 100 390 160 390 {lab=vss}
N -230 390 -150 390 {lab=vss}
N -150 -190 -150 -180 {lab=inN}
N -110 -130 -80 -130 {lab=inN}
N 160 -250 160 -230 {lab=Core_Out}
N -150 -250 -150 -190 {lab=inN}
N 160 -230 160 -210 {lab=Core_Out}
N -110 -280 -80 -280 {lab=inP}
N -70 -440 160 -440 {lab=vdd}
N -230 300 -210 300 {lab=vss}
N -150 390 -70 390 {lab=vss}
N -150 -440 -70 -440 {lab=vdd}
N 160 390 220 390 {lab=vss}
N -70 390 100 390 {lab=vss}
N -150 -100 -150 -50 {lab=#net3}
N -150 190 -150 270 {lab=#net4}
N -210 160 -170 160 {lab=vss}
N -210 120 -210 200 {lab=vss}
N -210 200 -210 300 {lab=vss}
N -150 -50 -150 130 {lab=#net3}
N 160 -20 160 160 {lab=#net1}
N 230 120 230 300 {lab=vss}
N -260 -340 -80 -340 {lab=inP}
N -260 -200 -150 -200 {lab=inN}
N 0 390 0 460 {lab=vss}
N -80 -280 -30 -280 {lab=inP}
N 30 -280 110 -280 {lab=Core_Out}
N -0 -260 -0 -240 {lab=vss}
N 0 -240 0 -30 {lab=vss}
N -0 -30 0 390 {lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 -130 0 1 {name=M6
W=3.8
L=1
nf=1
mult=8
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -130 -280 0 1 {name=M1
W=3.2
L=2
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 180 300 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po.sym} 160 190 0 0 {name=R1
W=1.1
L=14.6
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 140 -280 0 0 {name=M2
W=3.2
L=2
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -130 0 0 {name=M8
W=3.8
L=1
nf=1
mult=8
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -170 300 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {iopin.sym} 0 -470 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/res_high_po.sym} -150 160 0 0 {name=R3
W=2.28
L=14.6
model=res_high_po
spiceprefix=X
mult=1}
C {iopin.sym} 0 460 0 0 {name=p2 lab=vss}
C {ipin.sym} -260 -340 0 0 {name=p3 lab=inP}
C {ipin.sym} -260 -200 0 0 {name=p4 lab=inN}
C {opin.sym} 280 -190 0 0 {name=p5 lab=Core_Out}
C {sky130_fd_pr/res_high_po.sym} 0 -280 3 0 {name=R7
W=2000
L=0.01
model=res_high_po
spiceprefix=X
mult=1000}
