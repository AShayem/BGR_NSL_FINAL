v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {
I_max=3.5uA
 } 190 -410 0 0 0.25 0.25 {}
T {
I_max=106uA
 } 1390 -540 0 0 0.25 0.25 {}
T {OUTPUT Pin} 2090 -270 0 0 0.3 0.3 {}
T {Dmux select bit
-------------------------------
S1 | S0 | Out | Corner
----|------|-------|------------
 0 |  0  | Y0   | TT, FF
----|-----|--------|------------
 0 |  1   |  Y1  | SF
----|------|-------|------------
 1 |  0  |  Y2  | SS
----|------|-------|------------
 1 |  1  |  Y3  | FS} -2840 200 0 0 0.5 0.5 {}
T {S1





S0
} -1810 -450 0 0 0.4 0.4 {}
T {
I_max=0.132uA
 } -1180 -510 0 0 0.25 0.25 {}
T {Demux} -630 -260 0 0 0.5 0.5 {}
N 310 -260 310 -230 {lab=vss}
N 100 -170 200 -170 {lab=Y3}
N 120 -10 120 60 {lab=Y2}
N 120 -150 200 -150 {lab=Y2}
N 140 20 140 80 {lab=Y1}
N 140 -130 200 -130 {lab=Y1}
N 160 50 160 100 {lab=Y0}
N 160 -110 200 -110 {lab=Y0}
N 310 -400 310 -380 {lab=#net1}
N 100 -170 100 -40 {lab=Y3}
N 120 -150 120 -10 {lab=Y2}
N 140 -130 140 20 {lab=Y1}
N 160 -110 160 50 {lab=Y0}
N -1080 -180 -1080 -90 {lab=#net2}
N -1080 -90 -1080 310 {lab=#net2}
N -850 -180 -850 -90 {lab=#net3}
N -850 -50 -850 340 {lab=#net3}
N -1020 -150 -1020 -130 {lab=#net4}
N -1020 -50 -1020 -20 {lab=vss}
N -790 -50 -790 -20 {lab=vss}
N -910 -90 -910 290 {lab=#net5}
N -680 -90 -680 290 {lab=#net6}
N -600 290 -600 740 {lab=#net4}
N -680 290 -680 740 {lab=#net6}
N -910 290 -910 740 {lab=#net5}
N -910 740 -910 750 {lab=#net5}
N -680 740 -680 750 {lab=#net6}
N -600 740 -600 750 {lab=#net4}
N -1300 -180 -1300 280 {lab=vss}
N -1300 280 -1300 730 {lab=vss}
N -1210 -180 -1210 280 {lab=#net4}
N -1210 280 -1210 730 {lab=#net4}
N -1210 -150 -1020 -150 {lab=#net4}
N -1020 -150 -790 -150 {lab=#net4}
N -790 -150 -790 -130 {lab=#net4}
N -1300 -20 -790 -20 {lab=vss}
N -600 30 -400 30 {lab=#net4}
N -600 300 -400 300 {lab=#net4}
N -790 -150 -310 -150 {lab=#net4}
N -1300 170 -310 170 {lab=vss}
N -1210 230 -310 230 {lab=#net4}
N -1300 440 -310 440 {lab=vss}
N -1210 500 -310 500 {lab=#net4}
N -1300 700 -310 700 {lab=vss}
N -600 750 -600 810 {lab=#net4}
N -600 810 -400 810 {lab=#net4}
N -1290 890 -300 890 {lab=vss}
N -1210 730 -1210 750 {lab=#net4}
N -1210 760 -310 760 {lab=#net4}
N -1210 750 -1210 760 {lab=#net4}
N -600 570 -400 570 {lab=#net4}
N -1080 50 -400 50 {lab=#net2}
N -850 70 -400 70 {lab=#net3}
N -910 320 -400 320 {lab=#net5}
N -850 340 -400 340 {lab=#net3}
N -1080 590 -400 590 {lab=#net2}
N -680 610 -400 610 {lab=#net6}
N -680 750 -680 820 {lab=#net6}
N -910 830 -400 830 {lab=#net5}
N -910 750 -910 830 {lab=#net5}
N -680 850 -400 850 {lab=#net6}
N -680 820 -680 850 {lab=#net6}
N -850 -90 -850 -50 {lab=#net3}
N -1080 310 -1080 590 {lab=#net2}
N -600 -150 -600 290 {lab=#net4}
N -100 30 -70 30 {lab=#net4}
N -310 -150 -70 -150 {lab=#net4}
N -70 -150 -70 30 {lab=#net4}
N -310 170 -70 170 {lab=vss}
N -70 70 -70 170 {lab=vss}
N -100 70 -70 70 {lab=vss}
N -100 50 -10 50 {lab=Y3}
N -100 320 -30 320 {lab=Y2}
N -310 230 -80 230 {lab=#net4}
N -80 230 -80 300 {lab=#net4}
N -100 300 -80 300 {lab=#net4}
N -310 440 -90 440 {lab=vss}
N -90 340 -90 440 {lab=vss}
N -100 340 -90 340 {lab=vss}
N -100 590 -40 590 {lab=Y1}
N -310 500 -90 500 {lab=#net4}
N -90 500 -90 570 {lab=#net4}
N -100 570 -90 570 {lab=#net4}
N -310 700 -90 700 {lab=vss}
N -90 610 -90 700 {lab=vss}
N -100 610 -90 610 {lab=vss}
N -100 830 -30 830 {lab=Y0}
N -310 760 -100 760 {lab=#net4}
N -100 760 -90 760 {lab=#net4}
N -90 760 -90 810 {lab=#net4}
N -100 810 -90 810 {lab=#net4}
N -300 890 -70 890 {lab=vss}
N -100 850 -80 850 {lab=vss}
N 100 -40 100 10 {lab=Y3}
N -30 320 80 320 {lab=Y2}
N -40 590 120 590 {lab=Y1}
N -1210 -200 -1210 -180 {lab=#net4}
N -1450 -310 -1370 -310 {lab=#net4}
N -1450 -290 -1420 -290 {lab=#net2}
N -1080 -290 -1080 -180 {lab=#net2}
N -1830 -310 -1750 -310 {lab=vss}
N -1450 -420 -1370 -420 {lab=#net4}
N -1450 -380 -1370 -380 {lab=vss}
N -1450 -400 -1200 -400 {lab=#net3}
N -1200 -400 -1190 -400 {lab=#net3}
N -850 -400 -850 -180 {lab=#net3}
N -1830 -420 -1750 -420 {lab=vss}
N -2400 -70 -2400 -10 {lab=#net7}
N -2490 -70 -2490 -10 {lab=vss}
N -2490 50 -2490 110 {lab=0}
N -2400 50 -2400 80 {lab=0}
N -2490 80 -2400 80 {lab=0}
N -1420 -290 -1080 -290 {lab=#net2}
N -1190 -400 -850 -400 {lab=#net3}
N -1370 -420 -1320 -420 {lab=#net4}
N -1370 -310 -1210 -310 {lab=#net4}
N -1210 -310 -1210 -200 {lab=#net4}
N -1210 -460 -1210 -310 {lab=#net4}
N -1320 -420 -1210 -420 {lab=#net4}
N -1300 -460 -1300 -180 {lab=vss}
N -1370 -380 -1300 -380 {lab=vss}
N -1450 -270 -1300 -270 {lab=vss}
N -1210 -550 -1210 -520 {lab=vdd}
N 310 -490 310 -460 {lab=vdd}
N 1360 -480 1360 -460 {lab=#net8}
N 1360 -570 1360 -540 {lab=vdd}
N -2400 -170 -2400 -130 {lab=vdd}
N 450 -330 550 -330 {lab=inP}
N 420 -310 550 -310 {lab=inN}
N 1670 310 1670 360 {lab=#net9}
N 1590 280 1650 280 {lab=vss}
N 1590 280 1590 390 {lab=vss}
N 1670 130 1670 150 {lab=#net10}
N 1590 100 1590 280 {lab=vss}
N 1590 10 1650 10 {lab=vss}
N 1590 100 1650 100 {lab=vss}
N 1670 -110 1670 -100 {lab=out}
N 1590 -70 1650 -70 {lab=vss}
N 1590 -70 1590 10 {lab=vss}
N 2040 -110 2040 -90 {lab=out}
N 1910 140 1910 150 {lab=#net11}
N 1980 60 1980 70 {lab=#net11}
N 1950 110 2130 110 {lab=Y1}
N 1740 110 1740 200 {lab=#net8}
N 2040 150 2040 250 {lab=#net11}
N 1910 150 2040 150 {lab=#net11}
N 2020 30 2120 30 {lab=Y2}
N 2040 -30 2040 70 {lab=#net11}
N 2080 -60 2120 -60 {lab=Y3}
N 1980 70 2040 70 {lab=#net11}
N 1670 60 1910 60 {lab=#net12}
N 1910 60 1910 80 {lab=#net12}
N 1980 -20 1980 0 {lab=#net13}
N 1670 -20 1980 -20 {lab=#net13}
N 1740 30 1980 30 {lab=#net8}
N 1740 -60 2040 -60 {lab=#net8}
N 1670 -110 2040 -110 {lab=out}
N 1850 150 1850 170 {lab=#net10}
N 1670 150 1850 150 {lab=#net10}
N 1850 250 2040 250 {lab=#net11}
N 1850 230 1850 250 {lab=#net11}
N 1890 200 2130 200 {lab=Y0}
N 1740 200 1850 200 {lab=#net8}
N 1740 110 1910 110 {lab=#net8}
N 1670 60 1670 70 {lab=#net12}
N 1670 -40 1670 -20 {lab=#net13}
N 1590 10 1590 100 {lab=vss}
N 1670 40 1670 60 {lab=#net12}
N 1740 -60 1740 30 {lab=#net8}
N 2040 70 2040 150 {lab=#net11}
N 1670 250 1850 250 {lab=#net11}
N 1740 30 1740 110 {lab=#net8}
N 1670 360 1670 390 {lab=#net9}
N 1050 -420 1050 -340 {lab=#net8}
N 1050 -420 1310 -420 {lab=#net8}
N 1310 -420 1310 -340 {lab=#net8}
N 1310 -420 1670 -420 {lab=#net8}
N 1670 -420 1670 -320 {lab=#net8}
N 1670 -260 1670 -110 {lab=out}
N 1670 -420 1710 -420 {lab=#net8}
N 1670 -290 1690 -290 {lab=#net8}
N 1690 -420 1690 -290 {lab=#net8}
N 1740 -420 1740 -60 {lab=#net8}
N 1710 -420 1740 -420 {lab=#net8}
N 1050 -280 1050 -200 {lab=inN}
N 1310 -280 1310 -200 {lab=inP}
N 1310 -310 1350 -310 {lab=#net8}
N 1350 -360 1350 -310 {lab=#net8}
N 1310 -360 1350 -360 {lab=#net8}
N 1020 -310 1050 -310 {lab=#net8}
N 1020 -360 1020 -310 {lab=#net8}
N 1020 -360 1050 -360 {lab=#net8}
N 1090 -170 1270 -170 {lab=inN}
N 1050 -220 1110 -220 {lab=inN}
N 1110 -220 1110 -170 {lab=inN}
N 1090 -310 1270 -310 {lab=inP}
N 1250 -310 1250 -270 {lab=inP}
N 1250 -270 1310 -270 {lab=inP}
N 1310 -240 1410 -240 {lab=inP}
N 1410 -290 1410 -240 {lab=inP}
N 1410 -290 1630 -290 {lab=inP}
N 1050 -140 1050 10 {lab=#net14}
N 1310 -140 1310 10 {lab=bs}
N 1050 70 1050 300 {lab=#net15}
N 1310 70 1310 300 {lab=#net16}
N 1050 300 1050 320 {lab=#net15}
N 1310 300 1310 310 {lab=#net16}
N 1310 370 1310 500 {lab=vss}
N 1310 500 1670 500 {lab=vss}
N 1670 450 1670 500 {lab=vss}
N 1590 420 1630 420 {lab=vss}
N 1590 390 1590 420 {lab=vss}
N 1050 500 1310 500 {lab=vss}
N 1050 380 1050 500 {lab=vss}
N 1590 420 1590 500 {lab=vss}
N 1310 -170 1370 -170 {lab=vss}
N 1370 -170 1370 500 {lab=vss}
N 1330 40 1370 40 {lab=vss}
N 1350 340 1370 340 {lab=vss}
N 1000 -170 1050 -170 {lab=vss}
N 1000 -170 1000 500 {lab=vss}
N 1000 500 1050 500 {lab=vss}
N 1000 350 1010 350 {lab=vss}
N 1000 40 1030 40 {lab=vss}
N 1670 -210 2090 -210 {lab=out}
N 1360 -460 1360 -420 {lab=#net8}
N 1340 500 1340 540 {lab=vss}
N 950 -250 1050 -250 {lab=inN}
N 1120 -380 1120 -310 {lab=inP}
N 940 -380 1120 -380 {lab=inP}
N 750 -380 750 -350 {lab=vdd}
N 750 -290 750 -260 {lab=vdd}
N 750 -320 780 -320 {lab=vdd}
N 780 -370 780 -320 {lab=vdd}
N 750 -370 780 -370 {lab=vdd}
N 750 -390 750 -380 {lab=vdd}
N 670 -320 710 -320 {lab=vdd}
N 670 -260 750 -260 {lab=vdd}
N 670 -320 670 -260 {lab=vdd}
N 670 -390 670 -320 {lab=vdd}
N 670 -390 750 -390 {lab=vdd}
N 710 -420 710 -390 {lab=vdd}
N 1880 250 1880 290 {lab=#net11}
N 1880 350 1880 390 {lab=#net8}
N 1880 390 1930 390 {lab=#net8}
N 1930 320 1930 390 {lab=#net8}
N 1920 320 1930 320 {lab=#net8}
N 1850 320 1880 320 {lab=#net8}
N 1850 320 1850 360 {lab=#net8}
N 1850 360 1850 390 {lab=#net8}
N 1850 390 1880 390 {lab=#net8}
N 1740 200 1740 390 {lab=#net8}
N 1740 390 1850 390 {lab=#net8}
N 740 -210 740 -170 {lab=bs}
N 740 -110 740 -80 {lab=vss}
N 660 -140 700 -140 {lab=vss}
N 740 -140 800 -140 {lab=vss}
N 860 -20 860 30 {lab=inP}
N 860 90 860 130 {lab=vss}
N 790 60 820 60 {lab=vss}
N 790 60 790 130 {lab=vss}
N 790 130 860 130 {lab=vss}
N 860 60 900 60 {lab=vss}
N 900 60 900 130 {lab=vss}
N 860 130 900 130 {lab=vss}
N 690 -10 690 30 {lab=inN}
N 690 90 690 120 {lab=vss}
N 600 60 650 60 {lab=vss}
N 690 60 730 60 {lab=vss}
N 730 60 730 120 {lab=vss}
N 730 120 730 130 {lab=vss}
N 730 130 790 130 {lab=vss}
N 690 120 690 130 {lab=vss}
N 690 130 730 130 {lab=vss}
N 600 60 600 130 {lab=vss}
N 600 130 690 130 {lab=vss}
N 860 -20 1210 -20 {lab=inP}
N 1210 -220 1210 -20 {lab=inP}
N 1210 -220 1310 -220 {lab=inP}
N 620 -10 690 -10 {lab=inN}
N 590 -10 620 -10 {lab=inN}
N 590 -230 590 -10 {lab=inN}
N 590 -230 1050 -230 {lab=inN}
N 270 330 270 390 {lab=vss}
N 270 330 870 330 {lab=vss}
N 870 330 870 390 {lab=vss}
N 780 330 780 390 {lab=vss}
N 690 330 690 390 {lab=vss}
N 600 330 600 390 {lab=vss}
N 540 330 540 390 {lab=vss}
N 450 330 450 390 {lab=vss}
N 360 330 360 390 {lab=vss}
N 270 450 270 500 {lab=vss}
N 270 500 870 500 {lab=vss}
N 870 450 870 500 {lab=vss}
N 780 450 780 500 {lab=vss}
N 690 450 690 500 {lab=vss}
N 600 450 600 500 {lab=vss}
N 540 450 540 500 {lab=vss}
N 450 450 450 500 {lab=vss}
N 360 450 360 500 {lab=vss}
N 830 420 830 500 {lab=vss}
N 740 420 740 500 {lab=vss}
N 650 420 650 500 {lab=vss}
N 560 420 560 500 {lab=vss}
N 500 420 500 500 {lab=vss}
N 410 420 410 500 {lab=vss}
N 320 420 320 500 {lab=vss}
N 230 420 230 500 {lab=vss}
N 230 500 270 500 {lab=vss}
N 230 330 230 420 {lab=vss}
N 230 330 270 330 {lab=vss}
N 1270 580 1270 640 {lab=#net16}
N 1180 580 1180 640 {lab=#net16}
N 1090 580 1090 640 {lab=#net16}
N 1000 580 1000 640 {lab=#net16}
N 940 580 940 640 {lab=#net16}
N 850 580 850 640 {lab=#net16}
N 760 580 760 640 {lab=#net16}
N 1270 700 1270 750 {lab=vss}
N 1180 700 1180 750 {lab=vss}
N 1090 700 1090 750 {lab=vss}
N 1000 700 1000 750 {lab=vss}
N 940 700 940 750 {lab=vss}
N 850 700 850 750 {lab=vss}
N 760 700 760 750 {lab=vss}
N 1230 670 1230 750 {lab=vss}
N 1140 670 1140 750 {lab=vss}
N 1050 670 1050 750 {lab=vss}
N 960 670 960 750 {lab=vss}
N 900 670 900 750 {lab=vss}
N 810 670 810 750 {lab=vss}
N 720 670 720 750 {lab=vss}
N 760 580 850 580 {lab=#net16}
N 850 580 1270 580 {lab=#net16}
N 720 750 1270 750 {lab=vss}
N 2120 570 2120 630 {lab=#net9}
N 2030 570 2030 630 {lab=#net9}
N 1940 570 1940 630 {lab=#net9}
N 1850 570 1850 630 {lab=#net9}
N 1790 570 1790 630 {lab=#net9}
N 1700 570 1700 630 {lab=#net9}
N 1610 570 1610 630 {lab=#net9}
N 2120 690 2120 740 {lab=vss}
N 2030 690 2030 740 {lab=vss}
N 1940 690 1940 740 {lab=vss}
N 1850 690 1850 740 {lab=vss}
N 1790 690 1790 740 {lab=vss}
N 1700 690 1700 740 {lab=vss}
N 1610 690 1610 740 {lab=vss}
N 2080 660 2080 740 {lab=vss}
N 1990 660 1990 740 {lab=vss}
N 1900 660 1900 740 {lab=vss}
N 1810 660 1810 740 {lab=vss}
N 1750 660 1750 740 {lab=vss}
N 1660 660 1660 740 {lab=vss}
N 1570 660 1570 740 {lab=vss}
N 1610 570 1700 570 {lab=#net9}
N 1700 570 2120 570 {lab=#net9}
N 1570 740 2120 740 {lab=vss}
N 870 500 1000 500 {lab=vss}
N 1220 210 1220 580 {lab=#net16}
N 1220 210 1310 210 {lab=#net16}
N 1410 500 1410 740 {lab=vss}
N 1410 740 1410 750 {lab=vss}
N 1270 750 1410 750 {lab=vss}
N 1670 340 1710 340 {lab=#net9}
N 1710 340 1710 570 {lab=#net9}
N 1510 500 1510 740 {lab=vss}
N 1510 740 1570 740 {lab=vss}
N 660 -140 660 -80 {lab=vss}
N 660 -80 740 -80 {lab=vss}
N 740 -80 800 -80 {lab=vss}
N 800 -140 800 -80 {lab=vss}
N 380 -330 450 -330 {lab=inP}
N 380 -310 420 -310 {lab=inN}
N -10 50 100 50 {lab=Y3}
N 100 10 100 50 {lab=Y3}
N 120 60 120 320 {lab=Y2}
N 80 320 120 320 {lab=Y2}
N 140 80 140 590 {lab=Y1}
N 120 590 140 590 {lab=Y1}
N 160 100 160 670 {lab=Y0}
N 160 670 160 830 {lab=Y0}
N -30 830 160 830 {lab=Y0}
N -70 850 -70 890 {lab=vss}
N -80 850 -70 850 {lab=vss}
N -1300 730 -1300 890 {lab=vss}
N -1300 890 -1290 890 {lab=vss}
C {StartupCircuit.sym} 310 -320 0 0 {name=x1}
C {iopin.sym} -2400 -170 2 0 {name=p2 lab=vdd}
C {iopin.sym} -2490 -70 2 0 {name=p1 lab=vss}
C {lab_pin.sym} 1340 540 0 0 {name=p12 sig_type=std_logic lab=vss}
C {NAND.sym} -250 50 0 0 {name=x2}
C {NOT.sym} -700 -70 0 0 {name=x3}
C {NOT.sym} -930 -70 0 0 {name=x4}
C {NAND.sym} -250 320 0 0 {name=x6}
C {NAND.sym} -250 590 0 0 {name=x7}
C {NAND.sym} -250 830 0 0 {name=x8}
C {lab_pin.sym} -1210 -550 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {buffer.sym} -1600 -290 0 0 {name=x9}
C {buffer.sym} -1600 -400 0 0 {name=x10}
C {lab_pin.sym} -1300 -460 0 0 {name=p10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/corner.sym} -2660 -230 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -2880 20 0 0 {name=s2 only_toplevel=false value="
*.ac dec 100 1 20G 
*.dc TEMP -40 125 5
.tran 0.1u 20u 0 0.1u uic
.save all
.save db(v(out))
.end
"}
C {vsource.sym} -2400 20 0 0 {name=V1 value="PWL(0 0 1u 1.8)" savecurrent=false}
C {lab_pin.sym} -1830 -420 2 1 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} -1830 -310 0 0 {name=p17 sig_type=std_logic lab=vss}
C {vsource.sym} -2490 20 0 0 {name=V2 value="dc 0" savecurrent=false}
C {gnd.sym} -2490 110 0 0 {name=l1 lab=0}
C {ammeter.sym} -1210 -490 0 1 {name=Vmeas1_demux savecurrent=true spice_ignore=0}
C {lab_pin.sym} 310 -490 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {ammeter.sym} 310 -430 0 1 {name=Vmeas1_startup savecurrent=true spice_ignore=0}
C {lab_pin.sym} 310 -230 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1360 -570 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {ammeter.sym} 1360 -510 0 1 {name=Vmeas2_BGR_Core savecurrent=true spice_ignore=0}
C {ammeter.sym} -2400 -100 2 1 {name=Vmeas1_total savecurrent=true spice_ignore=0}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2060 -60 0 1 {name=M11
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2000 30 0 1 {name=M12
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1930 110 0 1 {name=M13
W=5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1870 200 0 1 {name=M14
W=5
L=1
nf=1
mult=9
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {ipin.sym} 2120 -60 0 1 {name=p14 lab=Y3}
C {ipin.sym} 2120 30 0 1 {name=p15 lab=Y2}
C {ipin.sym} 2130 110 0 1 {name=p8 lab=Y1}
C {ipin.sym} 2130 200 0 1 {name=p9 lab=Y0}
C {sky130_fd_pr/res_high_po_1p41.sym} 1670 -70 0 0 {name=R3
L=2.12
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1670 10 0 0 {name=R4
L=1.12
model=res_high_po_1p41
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_high_po_1p41.sym} 1670 100 0 0 {name=R5
L=0.7
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1670 280 0 0 {name=R6
L=43.12
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1070 -310 0 1 {name=M1
W=6
L=2
nf=1
mult=6
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1290 -310 0 0 {name=M2
W=6
L=2
nf=1
mult=6
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1650 -290 0 0 {name=M3
W=6
L=2
nf=1
mult=6
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1070 -170 0 1 {name=M4
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1290 -170 0 0 {name=M5
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 1310 40 0 1 {name=R1
L=15.92
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1050 40 0 0 {name=R2
L=7.72
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pnp_05v5.sym} 1030 350 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1

}
C {sky130_fd_pr/pnp_05v5.sym} 1330 340 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1650 420 0 0 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
}
C {ipin.sym} 940 -380 0 0 {name=p20 lab=inP}
C {ipin.sym} 950 -250 0 0 {name=p21 lab=inN}
C {opin.sym} 2090 -210 0 0 {name=p22 lab=out}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 730 -320 0 0 {name=M6
W=6
L=2
nf=1
mult=6
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 710 -420 0 1 {name=p23 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1900 320 2 0 {name=M7
W=5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 720 -140 0 0 {name=M8
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 1310 -70 0 0 {name=p24 sig_type=std_logic lab=bs}
C {lab_pin.sym} 800 -80 2 0 {name=p25 sig_type=std_logic lab=vss}
C {lab_pin.sym} 740 -210 2 0 {name=p26 sig_type=std_logic lab=bs}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 840 60 0 0 {name=M9
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 900 130 2 0 {name=p27 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 670 60 0 0 {name=M10
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 850 420 0 0 {name=Q4
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 760 420 0 0 {name=Q5
model=pnp_05v5_W3p40L3p40
m=1

}
C {sky130_fd_pr/pnp_05v5.sym} 670 420 0 0 {name=Q6
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 580 420 0 0 {name=Q7
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 520 420 0 0 {name=Q8
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 430 420 0 0 {name=Q9
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 340 420 0 0 {name=Q10
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 250 420 0 0 {name=Q11
model=pnp_05v5_W3p40L3p40
m=1

}
C {sky130_fd_pr/pnp_05v5.sym} 1250 670 0 0 {name=Q12
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1160 670 0 0 {name=Q13
model=pnp_05v5_W3p40L3p40
m=1

}
C {sky130_fd_pr/pnp_05v5.sym} 1070 670 0 0 {name=Q14
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 980 670 0 0 {name=Q15
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 920 670 0 0 {name=Q16
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 830 670 0 0 {name=Q17
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 740 670 0 0 {name=Q18
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 2100 660 0 0 {name=Q19
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 2010 660 0 0 {name=Q20
model=pnp_05v5_W3p40L3p40
m=1

}
C {sky130_fd_pr/pnp_05v5.sym} 1920 660 0 0 {name=Q21
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1830 660 0 0 {name=Q22
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1770 660 0 0 {name=Q23
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1680 660 0 0 {name=Q24
model=pnp_05v5_W3p40L3p40
m=1
}
C {sky130_fd_pr/pnp_05v5.sym} 1590 660 0 0 {name=Q25
model=pnp_05v5_W3p40L3p40
m=1
}
C {lab_pin.sym} 550 -330 0 1 {name=p11 sig_type=std_logic lab=inP}
C {lab_pin.sym} 550 -310 0 1 {name=p13 sig_type=std_logic lab=inN}
C {lab_pin.sym} 200 -170 0 1 {name=p28 sig_type=std_logic lab=Y3}
C {lab_pin.sym} 200 -150 0 1 {name=p29 sig_type=std_logic lab=Y2}
C {lab_pin.sym} 200 -130 0 1 {name=p30 sig_type=std_logic lab=Y1}
C {lab_pin.sym} 200 -110 0 1 {name=p31 sig_type=std_logic lab=Y0}
