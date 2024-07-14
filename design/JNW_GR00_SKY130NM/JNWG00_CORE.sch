v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 680 -840 740 -840 {
lab=IDAC_O[3:0]}
N 960 -730 960 -670 {
lab=IDAC_O[0]}
N 530 -780 570 -780 {
lab=IDAC_FINE_1V8[7:0]}
N 530 -760 570 -760 {
lab=IDAC_COARSE_1V8[7:0]}
N 530 -740 570 -740 {
lab=IDAC_O_N_1V8[7:0]}
N 530 -680 570 -680 {
lab=VSS}
N 530 -700 570 -700 {
lab=PWRUP_1V8}
N 530 -800 570 -800 {
lab=VDD_1V8}
N 780 -590 810 -590 {
lab=RES_N_1V8}
N 780 -550 810 -550 {
lab=DIODES_1V8[7:0]}
N 770 -530 810 -530 {
lab=VSS}
C {devices/ipin.sym} 90 -890 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 100 -480 0 0 {name=p2 lab=VSS}
C {cborder/border_s.sym} 1200 -80 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"
lab=PWRUP_1V8}
C {JNW_GR00_SKY130NM/JNWG00_BDAC.sym} 960 -540 0 0 {name=x2}
C {JNW_GR00_SKY130NM/JNWG00_IDAC.sym} 590 -720 0 0 {name=x1}
C {devices/lab_wire.sym} 740 -840 0 0 {name=p4 sig_type=std_logic lab=IDAC_O[3:0]}
C {devices/lab_wire.sym} 960 -730 0 0 {name=p5 sig_type=std_logic lab=IDAC_O[0]}
C {devices/ipin.sym} 530 -780 0 0 {name=p3 lab=IDAC_FINE_1V8[7:0]}
C {devices/ipin.sym} 530 -760 0 0 {name=p6 lab=IDAC_COARSE_1V8[7:0]}
C {devices/ipin.sym} 530 -740 0 0 {name=p7 lab=IDAC_O_N_1V8[3:0]}
C {devices/lab_wire.sym} 530 -680 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -700 0 0 {name=p9 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 530 -800 0 0 {name=p10 sig_type=std_logic lab=VDD_1V8}
C {devices/ipin.sym} 780 -590 0 0 {name=p11 lab=RES_N_1V8}
C {devices/ipin.sym} 780 -550 0 0 {name=p12 lab=DIODES_1V8[7:0]}
C {devices/lab_wire.sym} 770 -530 0 0 {name=p13 sig_type=std_logic lab=VSS}
