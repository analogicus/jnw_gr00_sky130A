v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -120 30 -90 {
lab=VSS}
N -80 -90 -0 -90 {
lab=A}
N 30 -50 30 0 {
lab=EN}
N 60 -90 120 -90 {
lab=B}
N 30 -260 30 -230 {
lab=VDD_1V8}
N 60 -260 120 -260 {
lab=B}
N 120 -260 120 -90 {
lab=B}
N -80 -260 -10 -260 {
lab=A}
N -80 -260 -80 -90 {
lab=A}
N -10 -260 -0 -260 {
lab=A}
N 30 -340 30 -300 {
lab=EN_N}
N -120 -170 -110 -170 {
lab=A}
N -110 -170 -80 -170 {
lab=A}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} 30 -50 3 0 {name=x1 }
C {devices/lab_wire.sym} 30 -120 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C1F2.sym} 30 -300 1 0 {name=x2 }
C {devices/lab_wire.sym} 30 -230 0 1 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/iopin.sym} -110 -170 2 0 {name=p2 lab=A}
C {devices/iopin.sym} 120 -170 2 1 {name=p3 lab=B}
C {devices/ipin.sym} 30 -340 0 0 {name=p4 lab=EN_N}
C {devices/ipin.sym} 30 0 0 0 {name=p5 lab=EN}
C {devices/ipin.sym} -120 -340 0 0 {name=p6 lab=VDD_1V8}
C {devices/ipin.sym} -110 0 0 0 {name=p8 lab=VSS}
C {cborder/border_s.sym} 370 180 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
