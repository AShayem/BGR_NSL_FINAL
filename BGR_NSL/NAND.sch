v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -160 -90 -130 {lab=out}
N -90 -130 40 -130 {lab=out}
N 40 -160 40 -130 {lab=out}
N -20 -130 -20 -70 {lab=out}
N -20 -10 -20 10 {lab=#net1}
N -20 70 -20 100 {lab=#net2}
N -100 40 -60 40 {lab=B}
N -20 -40 20 -40 {lab=vss}
N 20 -40 20 90 {lab=vss}
N -20 40 20 40 {lab=vss}
N 40 -190 60 -190 {lab=vdd}
N -90 -190 -70 -190 {lab=vdd}
N -70 -240 -70 -190 {lab=vdd}
N 60 -240 60 -190 {lab=vdd}
N -90 -240 60 -240 {lab=vdd}
N -90 -240 -90 -220 {lab=vdd}
N 40 -240 40 -220 {lab=vdd}
N -50 -190 -0 -190 {lab=A}
N -50 -190 -50 -90 {lab=A}
N -80 -90 -50 -90 {lab=A}
N -80 -90 -80 -40 {lab=A}
N -90 -40 -60 -40 {lab=A}
N -150 -190 -130 -190 {lab=B}
N -150 -190 -150 40 {lab=B}
N -150 40 -100 40 {lab=B}
N -170 -40 -150 -40 {lab=B}
N 40 -130 150 -130 {lab=out}
N -10 -250 -10 -240 {lab=vdd}
N 150 -130 280 -130 {lab=out}
N 160 -160 160 -130 {lab=out}
N 160 -240 160 -220 {lab=vdd}
N 180 -240 180 -190 {lab=vdd}
N 140 -240 180 -240 {lab=vdd}
N 60 -240 140 -240 {lab=vdd}
N 160 -190 180 -190 {lab=vdd}
N 110 -190 120 -190 {lab=C}
N -20 130 20 130 {lab=vss}
N 20 90 20 130 {lab=vss}
N -20 160 -20 190 {lab=vss}
N -100 130 -60 130 {lab=C}
N -100 130 -100 210 {lab=C}
N 110 -190 110 210 {lab=C}
N -100 210 110 210 {lab=C}
N -130 130 -100 130 {lab=C}
N 20 130 20 170 {lab=vss}
N -20 170 20 170 {lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -40 -40 0 0 {name=M6
W=1
L=1
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -190 0 0 {name=M1
W=1
L=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -190 0 0 {name=M2
W=1
L=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -40 40 0 0 {name=M3
W=1
L=1
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} -10 -250 0 0 {name=p1 lab=vdd}
C {iopin.sym} -20 190 0 0 {name=p2 lab=vss}
C {ipin.sym} -90 -40 0 0 {name=p3 lab=A}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 140 -190 0 0 {name=M4
W=1
L=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -40 130 0 0 {name=M5
W=1
L=1
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ipin.sym} -130 130 0 0 {name=p4 lab=C}
C {ipin.sym} -170 -40 0 0 {name=p5 lab=B}
C {opin.sym} 280 -130 0 0 {name=p6 lab=out}
