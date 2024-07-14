v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -420 160 -340 {
lab=VLPFZ}
N 80 -490 80 -300 {
lab=AVSS}
N 80 -490 160 -490 {
lab=AVSS}
N -360 -490 80 -490 {
lab=AVSS}
N -360 -420 -360 -260 {
lab=VLPF}
N -460 -490 -360 -490 {
lab=AVSS}
N -460 -260 -360 -260 {
lab=VLPF}
N -130 -420 -130 -260 {
lab=VLPF}
N -130 -260 -130 -140 {
lab=VLPF}
N -360 -260 -360 -140 {
lab=VLPF}
N -360 -140 -130 -140 {
lab=VLPF}
N 80 40 140 40 {
lab=AVSS}
N 80 -180 80 40 {
lab=AVSS}
N 160 -30 160 0 {
lab=VLPFZ}
N -130 -140 -130 80 {
lab=VLPF}
N 80 160 140 160 {
lab=AVSS}
N 80 40 80 160 {
lab=AVSS}
N -130 200 160 200 {
lab=VLPF}
N -130 80 -130 200 {
lab=VLPF}
N 160 80 160 120 {
lab=VN5}
N -460 -390 160 -390 {
lab=VLPFZ}
N 160 -340 160 -30 {
lab=VLPFZ}
N 80 -300 80 -180 {
lab=AVSS}
C {devices/ipin.sym} -450 -260 2 1 {name=p1 lab=VLPF
}
C {devices/ipin.sym} -450 -490 2 1 {name=p2 lab=AVDD}
C {cborder/border_s.sym} 410 250 0 0 {}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} 160 -480 2 1 {name=xb3[21:0]}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} -130 -480 2 1 {name=xb2[1:0]}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} -360 -480 2 1 {name=xb1 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 160 0 1 0 {name=xa2 xoffset=0 yoffset=2 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 160 200 1 1 {name=xa1 xoffset=0 yoffset=2 angle=0 M=1}
C {devices/lab_pin.sym} 160 100 0 1 {name=l5 sig_type=std_logic lab=VN5}
C {devices/ipin.sym} -450 -390 2 1 {name=p3 lab=VLPFZ}
