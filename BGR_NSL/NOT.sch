v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -40 0 20 {lab=#net1}
N -0 50 20 50 {lab=vss}
N 20 50 20 110 {lab=vss}
N -0 80 -0 100 {lab=vss}
N -0 100 -0 120 {lab=vss}
N 0 110 20 110 {lab=vss}
N -0 -70 20 -70 {lab=vdd}
N 20 -120 20 -70 {lab=vdd}
N 0 -140 0 -100 {lab=vdd}
N 0 -120 20 -120 {lab=vdd}
N -60 -70 -40 -70 {lab=in}
N -60 -70 -60 50 {lab=in}
N -60 50 -40 50 {lab=in}
N -100 0 -60 0 {lab=in}
N 0 0 70 0 {lab=#net1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 50 0 0 {name=M6
W=1
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -70 0 0 {name=M1
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 0 -140 0 0 {name=p1 lab=vdd
}
C {iopin.sym} 0 120 0 0 {name=p2 lab=vss
}
C {ipin.sym} -100 0 0 0 {name=p3 lab=in}
C {opin.sym} 70 0 0 0 {name=p4 lab=out}
