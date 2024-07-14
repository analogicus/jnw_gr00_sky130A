v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -700 570 -700 {
lab=#net1}
N 570 -700 570 -680 {
lab=#net1}
N 420 -720 590 -720 {
lab=#net2}
N 590 -720 590 -680 {
lab=#net2}
N 280 -540 310 -540 {
lab=VDD_1V8}
N 280 -520 310 -520 {
lab=PWRUP_1V8}
N 280 -440 310 -440 {
lab=VSS}
N 280 -460 310 -460 {
lab=IBPSR_1U}
N 280 -500 310 -500 {
lab=KICK_1V8}
N 220 -610 250 -610 {
lab=CP_DOWN_1V8}
N 220 -690 250 -690 {
lab=CP_UP_N_1V8}
N 540 -540 570 -540 {
lab=VDD_1V8}
N 1230 -690 1310 -690 {
lab=CMP_IP}
N 1230 -610 1310 -610 {
lab=CMP_IN}
N 1110 -530 1140 -530 {
lab=CHP_1V8}
N 1110 -560 1140 -560 {
lab=VDD_1V8}
N 1110 -510 1140 -510 {
lab=VSS}
N 1340 -530 1370 -530 {
lab=VDD_1V8}
N 1340 -510 1370 -510 {
lab=PWRUP_1V8}
N 1340 -490 1370 -490 {
lab=CK_CMP_1V8}
N 1340 -470 1370 -470 {
lab=VSS}
N 1470 -650 1510 -650 {
lab=CMP_O_1V8}
N 230 -240 260 -240 {
lab=IBPSR_1U}
N 230 -220 260 -220 {
lab=VSS}
C {devices/ipin.sym} 170 -1020 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 120 -60 0 0 {name=p2 lab=VSS}
C {cborder/border_s.sym} 1310 -170 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"
lab=PWRUP_1V8}
C {JNW_GR00_SKY130NM/JNWG00_CP.sym} 250 -630 0 0 {name=x1}
C {JNW_GR00_SKY130NM/JNWG00_CMP.sym} 1390 -630 0 0 {name=x2}
C {JNW_GR00_SKY130NM/JNWG00_CHP.sym} 1160 -650 0 0 {name=x3}
C {JNW_GR00_SKY130NM/JNWG00_BIAS.sym} 410 -240 0 0 {name=x4}
C {devices/opin.sym} 1510 -650 0 0 {name=p3 lab=CMP_O_1V8}
C {JNW_GR00_SKY130NM/JNWG00_LPF.sym} 710 -600 0 0 {name=x5}
C {devices/lab_wire.sym} 280 -540 0 0 {name=p4 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 280 -520 0 0 {name=p5 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 280 -440 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 280 -460 0 0 {name=p7 sig_type=std_logic lab=IBPSR_1U}
C {devices/lab_wire.sym} 280 -500 0 0 {name=p8 sig_type=std_logic lab=KICK_1V8}
C {devices/lab_wire.sym} 220 -610 0 0 {name=p9 sig_type=std_logic lab=CP_DOWN_1V8}
C {devices/lab_wire.sym} 220 -690 0 0 {name=p10 sig_type=std_logic lab=CP_UP_N_1V8}
C {devices/lab_wire.sym} 540 -540 0 0 {name=p11 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1110 -530 0 0 {name=p12 sig_type=std_logic lab=CHP_1V8}
C {devices/lab_wire.sym} 1110 -560 0 0 {name=p13 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1110 -510 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1340 -530 0 0 {name=p15 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1340 -510 0 0 {name=p16 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 1340 -490 0 0 {name=p17 sig_type=std_logic lab=CK_CMP_1V8}
C {devices/lab_wire.sym} 1340 -470 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1270 -690 0 0 {name=p19 sig_type=std_logic lab=CMP_IP}
C {devices/lab_wire.sym} 1280 -610 0 0 {name=p20 sig_type=std_logic lab=CMP_IN}
C {devices/lab_wire.sym} 230 -240 0 0 {name=p21 sig_type=std_logic lab=IBPSR_1U}
C {devices/lab_wire.sym} 230 -220 0 0 {name=p22 sig_type=std_logic lab=VSS
}
