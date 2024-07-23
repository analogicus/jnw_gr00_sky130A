v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 680 -840 740 -840 {
lab=IDAC_O[3:0]}
N 550 -590 550 -530 {
lab=IDAC_O[0]}
N 530 -780 570 -780 {
lab=IDAC_FINE_1V8[7:0]}
N 530 -760 570 -760 {
lab=IDAC_COARSE_1V8[7:0]}
N 530 -740 570 -740 {
lab=IDAC_O_N_1V8[3:0]}
N 530 -680 570 -680 {
lab=VSS}
N 530 -700 570 -700 {
lab=PWRUP_1V8}
N 530 -800 570 -800 {
lab=VDD_1V8}
N 370 -450 400 -450 {
lab=RES_N_1V8}
N 370 -410 400 -410 {
lab=DIODES_1V8[7:0]}
N 360 -390 400 -390 {
lab=VSS}
N 770 -380 810 -380 {
lab=VSS}
N 1120 -380 1160 -380 {
lab=VSS}
N 1120 -500 1160 -500 {
lab=VDD_1V8}
N 770 -500 810 -500 {
lab=VDD_1V8}
N 770 -470 810 -470 {
lab=C1A_1V8}
N 760 -440 810 -440 {
lab=C1B_1V8}
N 1130 -470 1160 -470 {
lab=C2A_1V8}
N 1130 -440 1160 -440 {
lab=C2B_1V8}
N 920 -590 920 -530 {
lab=IDAC_O[0]}
N 1270 -590 1270 -530 {
lab=IDAC_O[0]}
N 960 -530 1020 -530 {
lab=VP}
N 1310 -530 1370 -530 {
lab=VN}
N 1370 -720 1420 -720 {
lab=IBP}
N 1250 -720 1310 -720 {
lab=IDAC_O[1]}
N 370 -480 400 -480 {
lab=R_IBPS_1V8}
C {devices/ipin.sym} 90 -890 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 100 -480 0 0 {name=p2 lab=VSS}
C {JNW_GR00_SKY130NM/JNWG00_BDAC.sym} 550 -400 0 0 {name=x2}
C {JNW_GR00_SKY130NM/JNWG00_IDAC.sym} 590 -720 0 0 {name=x1}
C {devices/lab_wire.sym} 740 -840 0 0 {name=p4 sig_type=std_logic lab=IDAC_O[3:0]}
C {devices/lab_wire.sym} 550 -590 0 0 {name=p5 sig_type=std_logic lab=IDAC_O[0]}
C {devices/ipin.sym} 530 -780 0 0 {name=p3 lab=IDAC_FINE_1V8[7:0]}
C {devices/ipin.sym} 530 -760 0 0 {name=p6 lab=IDAC_COARSE_1V8[7:0]}
C {devices/ipin.sym} 530 -740 0 0 {name=p7 lab=IDAC_O_N_1V8[3:0]}
C {devices/lab_wire.sym} 530 -680 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -700 0 0 {name=p9 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 530 -800 0 0 {name=p10 sig_type=std_logic lab=VDD_1V8}
C {devices/ipin.sym} 370 -450 0 0 {name=p11 lab=RES_N_1V8}
C {devices/ipin.sym} 370 -410 0 0 {name=p12 lab=DIODES_1V8[7:0]}
C {devices/lab_wire.sym} 360 -390 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {JNW_GR00_SKY130NM/JNWG00_CCELL.sym} 880 -420 0 0 {name=x3}
C {JNW_GR00_SKY130NM/JNWG00_CCELL.sym} 1230 -420 0 0 {name=x4}
C {devices/lab_wire.sym} 770 -380 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1120 -380 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 770 -500 0 0 {name=p16 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1120 -500 0 0 {name=p17 sig_type=std_logic lab=VDD_1V8}
C {devices/ipin.sym} 770 -470 0 0 {name=p18 lab=C1A_1V8}
C {devices/ipin.sym} 770 -440 0 0 {name=p19 lab=C1B_1V8}
C {devices/ipin.sym} 1130 -470 0 0 {name=p20 lab=C2A_1V8}
C {devices/ipin.sym} 1130 -440 0 0 {name=p21 lab=C2B_1V8}
C {devices/lab_wire.sym} 920 -590 0 0 {name=p22 sig_type=std_logic lab=IDAC_O[0]}
C {devices/lab_wire.sym} 1270 -590 0 0 {name=p23 sig_type=std_logic lab=IDAC_O[0]}
C {devices/lab_wire.sym} 1020 -530 0 0 {name=p24 sig_type=std_logic lab=VP}
C {devices/lab_wire.sym} 1370 -530 0 0 {name=p25 sig_type=std_logic lab=VN}
C {devices/opin.sym} 1020 -530 0 0 {name=p26 lab=VP}
C {devices/opin.sym} 1370 -530 0 0 {name=p27 lab=VN}
C {devices/ipin.sym} 100 -640 0 0 {name=p28 lab=PWRUP_1V8}
C {devices/opin.sym} 1420 -720 0 0 {name=p29 lab=IBP}
C {devices/res.sym} 1340 -720 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1260 -720 0 0 {name=p30 sig_type=std_logic lab=IDAC_O[1]}
C {cborder/border_s.sym} 1250 -150 0 0 {}
C {devices/ipin.sym} 370 -480 0 0 {name=p31 lab=R_IBPS_1V8}
