v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 170 -460 970 -60 {flags=graph
y1=0.1
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
rawfile=$netlist_dir/TB_BGR.raw
color=4
node=out
x2=150
x1=-50
y2=0.4}
N -160 -70 -160 -30 {lab=#net1}
N -160 -70 0 -70 {lab=#net1}
N -0 -70 0 -50 {lab=#net1}
N -0 50 0 90 {lab=#net2}
N -160 90 0 90 {lab=#net2}
N -160 30 -160 90 {lab=#net2}
N 80 0 120 0 {lab=out}
N 120 -30 120 -0 {lab=out}
C {BGR_schem.sym} -50 0 0 0 {name=x1}
C {vsource.sym} -160 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {opin.sym} 120 -30 0 0 {name=p1 lab=out}
C {code_shown.sym} -580 -120 0 0 {name=s1 only_toplevel=false value="
.dc TEMP -40 125 10
.save v(out)
.end
"}
C {sky130_fd_pr/corner.sym} -800 -100 0 0 {name=CORNER only_toplevel=false corner=tt}
C {launcher.sym} -100 -260 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/@schname\\\\.raw tran"
}
