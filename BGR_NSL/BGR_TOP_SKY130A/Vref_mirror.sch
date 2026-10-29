v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 330 -10 330 {lab=vss}
N 30 360 30 420 {lab=vss}
N -50 330 -50 420 {lab=vss}
N -90 -400 -10 -400 {lab=Core_in}
N 30 -460 30 -430 {lab=vdd}
N 30 250 30 300 {lab=#net1}
N 30 -330 160 -330 {lab=out}
N 30 -550 30 -460 {lab=vdd}
N 30 -400 70 -400 {lab=vdd}
N 70 -460 70 -400 {lab=vdd}
N -50 220 10 220 {lab=vss}
N -50 220 -50 330 {lab=vss}
N -50 420 20 420 {lab=vss}
N -50 330 -40 330 {lab=vss}
N 30 70 30 90 {lab=#net2}
N -50 -50 -50 220 {lab=vss}
N -50 -50 10 -50 {lab=vss}
N -50 40 10 40 {lab=vss}
N 30 -230 30 -160 {lab=out}
N -50 -130 10 -130 {lab=vss}
N -50 -130 -50 -50 {lab=vss}
N 400 -170 400 -150 {lab=out}
N 270 80 270 90 {lab=#net3}
N 340 0 340 10 {lab=#net3}
N 320 -120 340 -120 {lab=vdd}
N 250 50 270 50 {lab=vdd}
N 320 -30 340 -30 {lab=vdd}
N 310 50 360 50 {lab=Y1}
N 100 -120 100 140 {lab=vdd}
N 100 -180 100 -120 {lab=vdd}
N 340 -70 340 -60 {lab=#net4}
N 190 -80 340 -80 {lab=#net4}
N 400 -80 400 170 {lab=#net3}
N 120 0 270 0 {lab=#net5}
N 270 90 330 90 {lab=#net3}
N 380 -30 480 -30 {lab=Y2}
N 60 -580 60 -550 {lab=vdd}
N 0 420 0 450 {lab=vss}
N 20 420 30 420 {lab=vss}
N 30 -550 90 -550 {lab=vdd}
N 360 50 410 50 {lab=Y1}
N 340 -120 400 -120 {lab=vdd}
N 400 -90 400 -80 {lab=#net3}
N 440 -120 480 -120 {lab=Y3}
N 340 10 400 10 {lab=#net3}
N 30 0 120 0 {lab=#net5}
N 270 0 270 20 {lab=#net5}
N 340 -80 340 -70 {lab=#net4}
N 30 -80 190 -80 {lab=#net4}
N 100 -30 320 -30 {lab=vdd}
N 100 -120 320 -120 {lab=vdd}
N 100 -190 100 -180 {lab=vdd}
N 30 -170 400 -170 {lab=out}
N 330 90 400 90 {lab=#net3}
N 410 50 490 50 {lab=Y1}
N 210 90 210 110 {lab=#net2}
N 30 90 210 90 {lab=#net2}
N 30 190 400 190 {lab=#net3}
N 400 170 400 190 {lab=#net3}
N 210 170 210 190 {lab=#net3}
N 250 140 490 140 {lab=Y0}
N 100 140 210 140 {lab=vdd}
N 100 50 250 50 {lab=vdd}
N 160 -330 480 -330 {lab=out}
N 30 -370 30 -230 {lab=out}
N 100 -280 100 -190 {lab=vdd}
N 100 -550 100 -280 {lab=vdd}
N 90 -550 100 -550 {lab=vdd}
N 70 -550 70 -460 {lab=vdd}
N 30 -20 30 10 {lab=#net5}
N 30 -100 30 -80 {lab=#net4}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 10 -400 0 0 {name=M3
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
C {sky130_fd_pr/pnp_05v5.sym} 10 330 0 0 {name=Q3
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po.sym} 30 220 0 0 {name=R2
W=0.22
L=8
model=res_high_po
spiceprefix=X
mult=1}
C {opin.sym} 480 -330 0 0 {name=p3 lab=out}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 420 -120 0 1 {name=M11
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 360 -30 0 1 {name=M12
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 290 50 0 1 {name=M13
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 230 140 0 1 {name=M14
W=5
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
C {iopin.sym} 60 -580 0 0 {name=p1 lab=vdd}
C {iopin.sym} 0 450 0 0 {name=p2 lab=vss}
C {ipin.sym} -90 -400 0 0 {name=p4 lab=Core_in}
C {ipin.sym} 480 -120 0 1 {name=p5 lab=Y3}
C {ipin.sym} 480 -30 0 1 {name=p7 lab=Y2}
C {ipin.sym} 490 50 0 1 {name=p8 lab=Y1}
C {ipin.sym} 490 140 0 1 {name=p9 lab=Y0}
C {sky130_fd_pr/res_high_po.sym} 30 40 0 0 {name=R1
W=1
L=0.5
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 30 -50 0 0 {name=R3
W=2.304
L=0.5
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 30 -130 0 0 {name=R4
W=2.147
L=0.5
model=res_high_po
spiceprefix=X
mult=1}
