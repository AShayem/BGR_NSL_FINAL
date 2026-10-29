v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 330 -470 1130 -70 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 330 -20 1130 380 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 40 -50 40 20 {lab=out}
N -30 50 -0 50 {lab=Vgs}
N 40 50 50 50 {lab=0}
N 50 50 50 90 {lab=0}
N 40 80 40 100 {lab=0}
N 40 90 50 90 {lab=0}
N -140 160 -140 180 {lab=0}
N -140 80 -140 100 {lab=Vgs}
N -140 50 -140 80 {lab=Vgs}
N 180 60 180 80 {lab=0}
N 180 -20 180 0 {lab=#net1}
N 180 -50 180 -20 {lab=#net1}
N 40 -160 180 -160 {lab=#net1}
N -140 50 -30 50 {lab=Vgs}
N 40 -160 40 -140 {lab=#net1}
N 180 -160 180 -50 {lab=#net1}
N 40 -80 40 -50 {lab=out}
N 0 -110 0 50 {lab=Vgs}
N 40 -110 70 -110 {lab=#net1}
N 70 -160 70 -110 {lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -140 130 0 0 {name=Vin
 value="PULSE(0 1.8 1ns 1ns 1ns 5ns 10ns)" savecurrent=false}
C {gnd.sym} -140 180 0 0 {name=l1 lab=0}
C {gnd.sym} 40 100 0 0 {name=l2 lab=0}
C {vsource.sym} 180 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 180 80 0 0 {name=l3 lab=0}
C {sky130_fd_pr/corner.sym} -280 -150 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -380 -300 0 0 {name=s1 only_toplevel=false value=
"
.tran 0.1n 100n

.save all
.end
"}
C {ipin.sym} -140 50 0 0 {name=p1 lab=Vgs
}
C {opin.sym} 40 -30 0 0 {name=p2 lab=out
}
C {launcher.sym} -20 -260 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/@schname\\\\.raw tran"
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -110 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
