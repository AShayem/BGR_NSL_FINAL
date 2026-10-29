v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1300 1520 -500 1920 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
sim_type=dc
rawfile=$netlist_dir/TB_BGR_v3.raw
x2=2.1892109
x1=1.4892109
y2=1.8
y1=0
color="5 4"
node="nodeb
vbe1"}
B 2 -1290 1030 -490 1430 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
sim_type=dc
rawfile=$netlist_dir/TB_BGR_v3.raw
color="5 4 6 8"
node="y3
y2
y1
y0"
y2=2
y1=-0.5
x2=5
x1=-1}
B 2 -1270 400 -470 800 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
sim_type=dc
rawfile=$netlist_dir/TB_BGR_v3.raw
x2=150
x1=-50
y2=1.1
y1=0.95
color=4
node=out}
B 2 380 400 1180 800 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
sim_type=dc
rawfile=$netlist_dir/TB_BGR_v3.raw
color=6
node=out
x2=2.1892109
x1=1.4892109
y1=0.8
y2=1.2}
B 2 -450 400 350 800 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
autoload=0
sim_type=ac
rawfile=$netlist_dir/TB_BGR_v3.raw
x1=0
y1=0
color=5
node=re(out)
y2=0.04
x2=10.30103}
T {
I=4.5uA
 } -80 -130 0 0 0.25 0.25 {}
T {
I=80.5uA
 } 500 -140 0 0 0.25 0.25 {}
T {
I=67nA
 } -20 100 0 0 0.25 0.25 {}
T {INPUT Pin} -360 220 0 0 0.3 0.3 {}
T {OUTPUT Pin} 720 -40 0 0 0.3 0.3 {}
T {
Total Maximum I=86uA
 } -400 -50 1 0 0.25 0.25 {}
N 240 -160 240 -130 {lab=vdd}
N -30 10 -30 30 {lab=0}
N 70 -60 120 -60 {lab=#net1}
N 70 -40 120 -40 {lab=#net2}
N 640 -10 680 -10 {lab=out}
N -30 300 -30 330 {lab=0}
N -200 210 -180 210 {lab=vdd}
N -200 230 -180 230 {lab=0}
N -390 30 -390 50 {lab=0}
N -390 110 -390 130 {lab=0}
N -390 -70 -390 -30 {lab=vdd}
N 680 -10 690 -10 {lab=out}
N -220 210 -200 210 {lab=vdd}
N -220 230 -200 230 {lab=0}
N 690 -10 710 -10 {lab=out}
N -30 30 -30 40 {lab=0}
N 150 190 240 190 {lab=Y3}
N 240 -20 240 190 {lab=Y3}
N 240 -20 340 -20 {lab=Y3}
N 150 210 260 210 {lab=Y2}
N 260 0 260 210 {lab=Y2}
N 260 -0 340 -0 {lab=Y2}
N 150 230 280 230 {lab=Y1}
N 280 20 280 230 {lab=Y1}
N 280 20 340 20 {lab=Y1}
N 150 250 300 250 {lab=Y0}
N 300 40 300 250 {lab=Y0}
N 300 40 340 40 {lab=Y0}
N -390 50 -390 110 {lab=0}
N 240 110 340 110 {lab=Y3}
N 260 140 340 140 {lab=Y2}
N 280 170 340 170 {lab=Y1}
N 300 200 340 200 {lab=Y0}
N -230 210 -220 210 {lab=vdd}
N 120 -60 340 -60 {lab=#net1}
N 120 -40 330 -40 {lab=#net2}
N 330 -40 340 -40 {lab=#net2}
N 490 -110 490 -90 {lab=#net3}
N 490 70 490 90 {lab=0}
N -30 -130 -30 -110 {lab=#net4}
N 490 -130 490 -110 {lab=#net3}
N -30 -130 -0 -130 {lab=#net4}
N 40 -60 70 -60 {lab=#net1}
N 40 -40 70 -40 {lab=#net2}
N 430 -130 490 -130 {lab=#net3}
N 260 -130 370 -130 {lab=vdd}
N 240 -130 260 -130 {lab=vdd}
N 60 -130 240 -130 {lab=vdd}
N -150 120 -120 120 {lab=vdd}
N -60 120 -30 120 {lab=#net5}
N -30 120 -30 140 {lab=#net5}
C {StartupCircuit.sym} -30 -50 0 0 {name=x1}
C {vsource.sym} -390 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -390 130 0 0 {name=l1 lab=0}
C {iopin.sym} -390 -70 0 0 {name=p1 lab=vdd}
C {iopin.sym} 240 -160 0 0 {name=p2 lab=vdd}
C {iopin.sym} -150 120 0 1 {name=p3 lab=vdd}
C {gnd.sym} -30 330 0 0 {name=l2 lab=0}
C {gnd.sym} -30 40 0 0 {name=l3 lab=0}
C {gnd.sym} -220 230 0 0 {name=l6 lab=0}
C {iopin.sym} -230 210 0 1 {name=p5 lab=vdd}
C {sky130_fd_pr/corner.sym} -710 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -750 -50 0 0 {name=s2 only_toplevel=false value="

//.ac dec 100 1 20G 
.dc TEMP -40 125 5
.save all
.end
"}
C {opin.sym} 710 -10 0 0 {name=p6 lab=out}
C {opin.sym} 340 110 0 0 {name=p7 lab=Y3}
C {opin.sym} 340 140 0 0 {name=p8 lab=Y2}
C {opin.sym} 340 170 0 0 {name=p9 lab=Y1}
C {opin.sym} 340 200 0 0 {name=p10 lab=Y0}
C {BGR_coreAndVrefBranch.sym} 490 -10 0 0 {name=x5}
C {gnd.sym} 490 90 0 0 {name=l5 lab=0}
C {Dmux1to4_2select_bit.sym} -30 220 0 0 {name=x2}
C {ammeter.sym} 30 -130 1 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 -130 3 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -90 120 3 1 {name=Vmeas2 savecurrent=true spice_ignore=0}
