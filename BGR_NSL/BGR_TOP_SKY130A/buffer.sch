v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -50 -90 10 {lab=#net1}
N -90 40 -70 40 {lab=vss}
N -70 40 -70 100 {lab=vss}
N -90 70 -90 90 {lab=vss}
N -90 90 -90 110 {lab=vss}
N -90 100 -70 100 {lab=vss}
N -90 -80 -70 -80 {lab=vdd}
N -70 -130 -70 -80 {lab=vdd}
N -90 -150 -90 -110 {lab=vdd}
N -90 -130 -70 -130 {lab=vdd}
N -150 -80 -130 -80 {lab=in}
N -150 -80 -150 40 {lab=in}
N -150 40 -130 40 {lab=in}
N -190 -10 -150 -10 {lab=in}
N -90 -10 -20 -10 {lab=#net1}
N 40 -40 40 20 {lab=out}
N 40 50 60 50 {lab=vss}
N 60 50 60 110 {lab=vss}
N 40 80 40 100 {lab=vss}
N 40 100 40 120 {lab=vss}
N 40 110 60 110 {lab=vss}
N 40 -70 60 -70 {lab=vdd}
N 60 -120 60 -70 {lab=vdd}
N 40 -140 40 -100 {lab=vdd}
N 40 -120 60 -120 {lab=vdd}
N -20 -70 0 -70 {lab=#net1}
N -20 -70 -20 50 {lab=#net1}
N -20 50 0 50 {lab=#net1}
N 40 0 110 0 {lab=out}
N -90 120 40 120 {lab=vss}
N -90 110 -90 120 {lab=vss}
N -30 120 -30 140 {lab=vss}
N -90 -150 40 -150 {lab=vdd}
N 40 -150 40 -140 {lab=vdd}
N -20 -180 -20 -150 {lab=vdd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 40 0 0 {name=M6
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -80 0 0 {name=M1
W=2
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
C {ipin.sym} -190 -10 0 0 {name=p11 lab=in}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 20 50 0 0 {name=M2
W=1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -70 0 0 {name=M3
W=2
L=1
nf=1
mult=8
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {opin.sym} 110 0 0 0 {name=p1 lab=out}
C {iopin.sym} -20 -180 0 0 {name=p2 lab=vdd}
C {iopin.sym} -30 140 0 0 {name=p3 lab=vss}
