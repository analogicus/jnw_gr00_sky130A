v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 680 -840 740 -840 {
lab=IDAC_O[3:0]}
N 680 -580 680 -520 {
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
N 500 -440 530 -440 {
lab=RES_N_1V8}
N 500 -400 530 -400 {
lab=DIODES_1V8[7:0]}
N 490 -380 530 -380 {
lab=VSS}
N 1020 -450 1060 -450 {
lab=VSS}
N 1010 -100 1050 -100 {
lab=VSS}
N 1010 -220 1050 -220 {
lab=VDD_1V8}
N 1020 -570 1060 -570 {
lab=VDD_1V8}
N 1020 -540 1060 -540 {
lab=C1A_1V8}
N 1010 -510 1060 -510 {
lab=C1B_1V8}
N 1020 -190 1050 -190 {
lab=C2A_1V8}
N 1020 -160 1050 -160 {
lab=C2B_1V8}
N 1170 -660 1170 -600 {
lab=IDAC_O[0]}
N 1160 -310 1160 -250 {
lab=IDAC_O[0]}
N 1210 -600 1270 -600 {
lab=VP}
N 1200 -250 1260 -250 {
lab=VN}
N 1370 -720 1420 -720 {
lab=IBP}
N 1250 -720 1310 -720 {
lab=IDAC_O[1]}
C {devices/ipin.sym} 90 -890 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 100 -480 0 0 {name=p2 lab=VSS}
C {JNW_GR00_SKY130NM/JNWG00_BDAC.sym} 680 -390 0 0 {name=x2}
C {JNW_GR00_SKY130NM/JNWG00_IDAC.sym} 590 -720 0 0 {name=x1}
C {devices/lab_wire.sym} 740 -840 0 0 {name=p4 sig_type=std_logic lab=IDAC_O[3:0]}
C {devices/lab_wire.sym} 680 -580 0 0 {name=p5 sig_type=std_logic lab=IDAC_O[0]}
C {devices/ipin.sym} 530 -780 0 0 {name=p3 lab=IDAC_FINE_1V8[7:0]}
C {devices/ipin.sym} 530 -760 0 0 {name=p6 lab=IDAC_COARSE_1V8[7:0]}
C {devices/ipin.sym} 530 -740 0 0 {name=p7 lab=IDAC_O_N_1V8[3:0]}
C {devices/lab_wire.sym} 530 -680 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -700 0 0 {name=p9 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 530 -800 0 0 {name=p10 sig_type=std_logic lab=VDD_1V8}
C {devices/ipin.sym} 500 -440 0 0 {name=p11 lab=RES_N_1V8}
C {devices/ipin.sym} 500 -400 0 0 {name=p12 lab=DIODES_1V8[7:0]}
C {devices/lab_wire.sym} 490 -380 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {JNW_GR00_SKY130NM/JNWG00_CCELL.sym} 1130 -490 0 0 {name=x3}
C {JNW_GR00_SKY130NM/JNWG00_CCELL.sym} 1120 -140 0 0 {name=x4}
C {devices/lab_wire.sym} 1020 -450 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1010 -100 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1020 -570 0 0 {name=p16 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1010 -220 0 0 {name=p17 sig_type=std_logic lab=VDD_1V8}
C {devices/ipin.sym} 1020 -540 0 0 {name=p18 lab=C1A_1V8}
C {devices/ipin.sym} 1020 -510 0 0 {name=p19 lab=C1B_1V8}
C {devices/ipin.sym} 1020 -190 0 0 {name=p20 lab=C2A_1V8}
C {devices/ipin.sym} 1020 -160 0 0 {name=p21 lab=C2B_1V8}
C {devices/lab_wire.sym} 1170 -660 0 0 {name=p22 sig_type=std_logic lab=IDAC_O[0]}
C {devices/lab_wire.sym} 1160 -310 0 0 {name=p23 sig_type=std_logic lab=IDAC_O[0]}
C {devices/lab_wire.sym} 1270 -600 0 0 {name=p24 sig_type=std_logic lab=VP}
C {devices/lab_wire.sym} 1260 -250 0 0 {name=p25 sig_type=std_logic lab=VN}
C {devices/opin.sym} 1430 -520 0 0 {name=p26 lab=VP}
C {devices/opin.sym} 1430 -260 0 0 {name=p27 lab=VN}
C {devices/ipin.sym} 100 -640 0 0 {name=p28 lab=PWRUP_1V8}
C {devices/opin.sym} 1420 -720 0 0 {name=p29 lab=IBP}
C {devices/res.sym} 1340 -720 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1260 -720 0 0 {name=p30 sig_type=std_logic lab=IDAC_O[1]}
C {cborder/border_s.sym} 1250 -150 0 0 {}
