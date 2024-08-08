v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -270 500 -270 {
lab=VDD_1V8}
N 280 -130 280 -110 {
lab=GND}
N 280 -210 280 -130 {
lab=GND}
N 100 -210 100 -120 {
lab=GND}
N 100 -120 280 -120 {
lab=GND}
N 400 -520 400 -500 {
lab=#net1}
N 100 -500 100 -270 {
lab=#net1}
N 100 -500 400 -500 {
lab=#net1}
N 230 -460 230 -120 {
lab=GND}
N 230 -460 400 -460 {
lab=GND}
N 370 -440 400 -440 {
lab=GND}
N 370 -460 370 -440 {
lab=GND}
N 360 -420 400 -420 {
lab=VDD_1V8}
N 370 -480 400 -480 {
lab=GND}
N 370 -480 370 -460 {
lab=GND}
N 700 -540 760 -540 {
lab=CMPO}
N 340 -540 400 -540 {
lab=VDD_1V8}
N 340 -540 340 -270 {
lab=VDD_1V8}
N 340 -420 360 -420 {
lab=VDD_1V8}
C {devices/vsource.sym} 280 -240 0 0 {name=V1 value=\{vdda\}}
C {devices/gnd.sym} 280 -110 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 350 -270 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/vsource.sym} 100 -240 0 0 {name=V2 value=0.9}
C {devices/lab_wire.sym} 760 -540 0 1 {name=p2 sig_type=std_logic lab=CMPO}
C {devices/simulator_commands.sym} 670 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include corner.spi
"}
C {JNW_GR00_SKY130NM/JNWG00_CMP.sym} 550 -480 0 0 {name=x1}
