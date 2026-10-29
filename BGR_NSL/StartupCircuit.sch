v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -240 30 -240 {lab=outP}
N -60 -240 -60 -190 {lab=outP}
N -80 -190 -60 -190 {lab=outP}
N -120 -10 -120 10 {lab=#net1}
N -120 180 -120 250 {lab=vss}
N -120 -140 -10 -140 {lab=#net1}
N -60 -10 -60 40 {lab=#net1}
N -120 -10 -60 -10 {lab=#net1}
N -80 40 -60 40 {lab=#net1}
N 30 -150 180 -150 {lab=outN}
N -120 -400 -120 -330 {lab=vdd}
N -10 -180 -10 -140 {lab=#net1}
N 30 -240 30 -210 {lab=outP}
N 30 -300 30 -240 {lab=outP}
N -80 -300 -60 -300 {lab=outP}
N 30 -300 250 -300 {lab=outP}
N -150 -300 -120 -300 {lab=vdd}
N -150 -300 -150 -190 {lab=vdd}
N 30 -180 80 -180 {lab=vdd}
N 80 -180 80 -80 {lab=vdd}
N -150 -80 80 -80 {lab=vdd}
N -150 -190 -150 -80 {lab=vdd}
N -150 -400 -150 -300 {lab=vdd}
N -150 -400 -120 -400 {lab=vdd}
N -150 40 -120 40 {lab=vss}
N -150 150 -150 250 {lab=vss}
N -150 -430 -150 -400 {lab=vdd}
N -60 -300 -60 -240 {lab=outP}
N -120 -160 -120 -140 {lab=#net1}
N -120 -140 -120 -10 {lab=#net1}
N -150 40 -150 150 {lab=vss}
N -150 250 -120 250 {lab=vss}
N -120 -270 -120 -220 {lab=#net2}
N -150 -190 -120 -190 {lab=vdd}
N -120 160 -120 180 {lab=vss}
N -120 70 -120 100 {lab=#net3}
N -150 130 -120 130 {lab=vss}
N -80 130 -50 130 {lab=#net3}
N -50 90 -50 130 {lab=#net3}
N -120 90 -50 90 {lab=#net3}
N -150 250 -150 310 {lab=vss}
N 180 -150 250 -150 {lab=outN}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -100 -300 0 1 {name=M4
W=2
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 10 -180 0 0 {name=M7
W=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -100 40 0 1 {name=M9
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
C {iopin.sym} -150 -430 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -100 -190 0 1 {name=M5
W=2
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -100 130 0 1 {name=M10
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
C {iopin.sym} -150 310 0 0 {name=p2 lab=vss}
C {opin.sym} 250 -300 0 0 {name=p3 lab=outP}
C {opin.sym} 250 -150 0 0 {name=p4 lab=outN}
