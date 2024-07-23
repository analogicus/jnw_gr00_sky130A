v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N 880 -650 1080 -690 {
lab=#net1}
N 880 -630 1080 -610 {
lab=#net2}
C {devices/ipin.sym} 170 -1020 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 120 -60 0 0 {name=p2 lab=VSS}
C {cborder/border_s.sym} 1310 -170 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"
lab=PWRUP_1V8}
C {JNW_GR00_SKY130NM/JNWG00_CMP.sym} 1390 -630 0 0 {name=x2}
C {devices/opin.sym} 1510 -650 0 0 {name=p3 lab=CMP_O_1V8}
C {devices/lab_wire.sym} 1110 -530 0 0 {name=p12 sig_type=std_logic lab=CHP_1V8}
C {devices/lab_wire.sym} 1110 -560 0 0 {name=p13 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1110 -510 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1340 -530 0 0 {name=p15 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 1340 -510 0 0 {name=p16 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 1340 -490 0 0 {name=p17 sig_type=std_logic lab=CK_CMP_1V8}
C {devices/lab_wire.sym} 1340 -470 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1270 -690 0 0 {name=p19 sig_type=std_logic lab=CMP_IP}
C {devices/lab_wire.sym} 1280 -610 0 0 {name=p20 sig_type=std_logic lab=CMP_IN}
C {JNW_GR00_SKY130NM/JNWG00_CORE.sym} 730 -560 0 0 {name=x1}
