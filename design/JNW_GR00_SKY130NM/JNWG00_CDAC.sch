v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Capacitive DAC} 710 -800 0 0 0.5 0.5 {}
N 630 -180 670 -180 {
lab=CB_1V8[7:0]}
N 630 -130 650 -130 {
lab=VSS}
N 630 -410 670 -410 {
lab=C_1V8[7:0]}
N 930 -410 990 -410 {
lab=CN_1V8[7:0]}
N 760 -580 800 -580 {
lab=VDD_1V8}
N 760 -560 800 -560 {
lab=C_1V8[7:0]}
N 760 -540 800 -540 {
lab=CN_1V8[7:0]}
N 760 -520 800 -520 {
lab=CB_1V8[7:0]}
C {devices/ipin.sym} 630 -180 0 0 {name=p3 lab=CB_1V8[7:0]}
C {devices/ipin.sym} 630 -130 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 630 -510 0 0 {name=p5 lab=VDD_1V8}
C {devices/ipin.sym} 630 -410 0 0 {name=p6 lab=C_1V8[7:0]}
C {devices/ipin.sym} 990 -410 0 1 {name=p7 lab=CN_1V8[7:0]}
C {cborder/border_s.sym} 1250 -170 0 0 {
user="Carsten Wulff"
company="Carsten Wulff Software"
lab=CB_1V8[7:0]}
C {JNW_GR00_SKY130NM/JNWG00_CCELL.sym} 950 -540 0 0 {name=x1[7:0]}
C {devices/lab_wire.sym} 760 -580 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 760 -560 0 0 {name=p2 sig_type=std_logic lab=C_1V8[7:0]}
C {devices/lab_wire.sym} 760 -540 0 0 {name=p8 sig_type=std_logic lab=CN_1V8[7:0]}
C {devices/lab_wire.sym} 760 -520 0 0 {name=p9 sig_type=std_logic lab=CB_1V8[7:0]}
