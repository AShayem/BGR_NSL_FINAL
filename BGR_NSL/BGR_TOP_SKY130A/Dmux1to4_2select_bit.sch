v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -570 -200 -570 -110 {lab=S0}
N -570 -110 -570 290 {lab=S0}
N -340 -200 -340 -110 {lab=S1}
N -340 -70 -340 320 {lab=S1}
N -510 -170 -510 -150 {lab=vdd}
N -510 -70 -510 -40 {lab=vss}
N -280 -70 -280 -40 {lab=vss}
N -400 -110 -400 270 {lab=#net1}
N -170 -110 -170 270 {lab=#net2}
N -90 270 -90 720 {lab=vdd}
N -170 270 -170 720 {lab=#net2}
N -400 270 -400 720 {lab=#net1}
N -400 720 -400 730 {lab=#net1}
N -170 720 -170 730 {lab=#net2}
N -90 720 -90 730 {lab=vdd}
N -790 -200 -790 260 {lab=vss}
N -790 260 -790 710 {lab=vss}
N -700 -200 -700 260 {lab=vdd}
N -700 260 -700 710 {lab=vdd}
N -700 -170 -510 -170 {lab=vdd}
N -510 -170 -280 -170 {lab=vdd}
N -280 -170 -280 -150 {lab=vdd}
N -790 -40 -280 -40 {lab=vss}
N -90 10 110 10 {lab=vdd}
N -90 280 110 280 {lab=vdd}
N -280 -170 200 -170 {lab=vdd}
N -790 150 200 150 {lab=vss}
N -700 210 200 210 {lab=vdd}
N -790 420 200 420 {lab=vss}
N -700 480 200 480 {lab=vdd}
N -790 680 200 680 {lab=vss}
N -90 730 -90 790 {lab=vdd}
N -90 790 110 790 {lab=vdd}
N -790 710 -790 930 {lab=vss}
N -790 930 200 930 {lab=vss}
N -700 710 -700 730 {lab=vdd}
N -700 740 200 740 {lab=vdd}
N -700 730 -700 740 {lab=vdd}
N -90 550 110 550 {lab=vdd}
N -570 30 110 30 {lab=S0}
N -340 50 110 50 {lab=S1}
N -400 300 110 300 {lab=#net1}
N -340 320 110 320 {lab=S1}
N -570 570 110 570 {lab=S0}
N -170 590 110 590 {lab=#net2}
N -170 730 -170 800 {lab=#net2}
N -400 810 110 810 {lab=#net1}
N -400 730 -400 810 {lab=#net1}
N -170 830 110 830 {lab=#net2}
N -170 800 -170 830 {lab=#net2}
N -340 -110 -340 -70 {lab=S1}
N -570 290 -570 570 {lab=S0}
N -90 -170 -90 270 {lab=vdd}
N 410 10 440 10 {lab=vdd}
N 200 -170 440 -170 {lab=vdd}
N 440 -170 440 10 {lab=vdd}
N 200 150 440 150 {lab=vss}
N 440 50 440 150 {lab=vss}
N 410 50 440 50 {lab=vss}
N 410 30 500 30 {lab=Y3}
N 410 300 480 300 {lab=Y2}
N 200 210 430 210 {lab=vdd}
N 430 210 430 280 {lab=vdd}
N 410 280 430 280 {lab=vdd}
N 200 420 420 420 {lab=vss}
N 420 320 420 420 {lab=vss}
N 410 320 420 320 {lab=vss}
N 410 570 470 570 {lab=Y1}
N 200 480 420 480 {lab=vdd}
N 420 480 420 550 {lab=vdd}
N 410 550 420 550 {lab=vdd}
N 200 680 420 680 {lab=vss}
N 420 590 420 680 {lab=vss}
N 410 590 420 590 {lab=vss}
N 410 810 480 810 {lab=Y0}
N 200 740 410 740 {lab=vdd}
N 410 740 420 740 {lab=vdd}
N 420 740 420 790 {lab=vdd}
N 410 790 420 790 {lab=vdd}
N 200 930 430 930 {lab=vss}
N 430 830 430 930 {lab=vss}
N 410 830 430 830 {lab=vss}
C {NAND.sym} 260 30 0 0 {name=x1}
C {NOT.sym} -190 -90 0 0 {name=x2}
C {NOT.sym} -420 -90 0 0 {name=x3}
C {NAND.sym} 260 300 0 0 {name=x4}
C {NAND.sym} 260 570 0 0 {name=x5}
C {NAND.sym} 260 810 0 0 {name=x6}
C {ipin.sym} -570 -200 0 0 {name=p1 lab=S0}
C {ipin.sym} -340 -200 0 0 {name=p2 lab=S1}
C {iopin.sym} -700 -200 0 0 {name=p4 lab=vdd}
C {iopin.sym} -790 -200 0 0 {name=p5 lab=vss}
C {opin.sym} 500 30 0 0 {name=p6 lab=Y3}
C {opin.sym} 480 300 0 0 {name=p7 lab=Y2}
C {opin.sym} 470 570 0 0 {name=p8 lab=Y1}
C {opin.sym} 480 810 0 0 {name=p9 lab=Y0}
