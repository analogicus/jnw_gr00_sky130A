v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Switch cap cell} 710 -800 0 0 0.5 0.5 {}
N 650 -130 710 -130 {
lab=VSS}
N 710 -250 710 -210 {
lab=VSS}
N 710 -410 740 -410 {
lab=VSS}
N 710 -380 710 -310 {
lab=CB}
N 890 -380 890 -310 {
lab=CB}
N 710 -310 890 -310 {
lab=CB}
N 890 -470 890 -440 {
lab=CA}
N 710 -470 890 -470 {
lab=CA}
N 710 -470 710 -440 {
lab=CA}
N 860 -410 890 -410 {
lab=VDD_1V8}
N 630 -130 650 -130 {
lab=VSS}
N 630 -410 670 -410 {
lab=CT_1V8}
N 930 -410 990 -410 {
lab=CTN_1V8}
N 110 -100 150 -100 {
lab=VDD_1V8}
N 110 -60 140 -60 {
lab=VSS}
N 440 -140 470 -140 {
lab=VSS}
N 440 -220 480 -220 {
lab=VDD_1V8}
N 340 -220 440 -220 {
lab=VDD_1V8}
N 240 -220 340 -220 {
lab=VDD_1V8}
N 340 -140 440 -140 {
lab=VSS}
N 240 -140 340 -140 {
lab=VSS}
N 280 -180 300 -180 {
lab=#net1}
N 380 -180 400 -180 {
lab=CT_1V8}
N 480 -180 510 -180 {
lab=CTN_1V8}
N 170 -180 200 -180 {
lab=CA_1V8}
N 390 -410 390 -180 {
lab=CT_1V8}
N 390 -410 630 -410 {
lab=CT_1V8}
N 890 -310 1220 -310 {
lab=CB}
N 710 -210 710 -130 {
lab=VSS}
N 1220 -310 1300 -310 {
lab=CB}
N 900 -260 930 -260 {
lab=VDD_1V8}
N 930 -260 930 -230 {
lab=VDD_1V8}
N 900 -250 900 -230 {
lab=CB}
N 900 -250 960 -250 {
lab=CB}
N 960 -250 960 -230 {
lab=CB}
N 960 -310 960 -250 {
lab=CB}
N 930 -190 930 -150 {
lab=CT_1V8}
N 1090 -250 1090 -220 {
lab=VSS}
N 1060 -240 1060 -220 {
lab=CB}
N 1060 -240 1120 -240 {
lab=CB}
N 1120 -240 1120 -220 {
lab=CB}
N 1120 -310 1120 -240 {
lab=CB}
N 1090 -180 1090 -120 {
lab=CTN_1V8}
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -280 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=5	 MF=1 spiceprefix=X}
C {JNW_ATR_SKY130NM/JNWATR_NCH_2C1F2.sym} 670 -410 0 0 {name=x2[1:0]}
C {JNW_ATR_SKY130NM/JNWATR_PCH_2C1F2.sym} 930 -410 0 1 {name=x3[1:0]}
C {devices/lab_wire.sym} 860 -410 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 740 -410 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 170 -180 0 0 {name=p3 lab=CA_1V8}
C {devices/ipin.sym} 630 -130 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 210 -580 0 0 {name=p5 lab=VDD_1V8}
C {devices/iopin.sym} 800 -470 1 1 {name=p8 lab=CA}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 200 -180 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 300 -180 0 0 {name=x5 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 400 -180 0 0 {name=x6 }
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 110 -80 0 0 {name=x7 }
C {devices/lab_wire.sym} 150 -100 0 1 {name=p9 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 140 -60 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 470 -140 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -220 0 1 {name=p12 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 570 -410 0 0 {name=p13 sig_type=std_logic lab=CT_1V8}
C {devices/lab_wire.sym} 990 -410 0 1 {name=p7 sig_type=std_logic lab=CTN_1V8}
C {devices/lab_wire.sym} 490 -180 0 1 {name=p14 sig_type=std_logic lab=CTN_1V8}
C {devices/iopin.sym} 1300 -310 0 0 {name=p21 lab=CB}
C {JNW_ATR_SKY130NM/JNWATR_PCH_2C1F2.sym} 930 -190 3 0 {name=x1 }
C {devices/lab_wire.sym} 900 -260 0 0 {name=p6 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 930 -150 0 0 {name=p16 sig_type=std_logic lab=CT_1V8}
C {JNW_ATR_SKY130NM/JNWATR_NCH_2C1F2.sym} 1090 -180 3 0 {name=x2}
C {devices/lab_wire.sym} 1090 -250 3 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1090 -140 0 1 {name=p18 sig_type=std_logic lab=CTN_1V8}
