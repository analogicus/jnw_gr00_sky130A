v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 -550 -400 -550 {
lab=B}
N -410 -550 -410 -520 {
lab=B}
N -410 -430 -400 -430 {
lab=A}
N -410 -460 -410 -430 {
lab=A}
C {sky130_fd_pr/cap_mim_m3_1.sym} -410 -490 0 0 {name=C1 model=cap_mim_m3_1 W=7 L=7 MF=1 spiceprefix=X}
C {devices/iopin.sym} -400 -430 0 0 {name=p1 lab=A}
C {devices/iopin.sym} -400 -550 0 0 {name=p2 lab=B}
C {cborder/border_s.sym} 40 -100 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
