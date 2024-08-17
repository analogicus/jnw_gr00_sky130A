v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Bipolar DAC} 770 -1150 0 0 0.5 0.5 {}
N 280 -220 320 -220 {
lab=VSS}
N 320 -220 410 -220 {
lab=VSS}
N 410 -220 590 -220 {
lab=VSS}
N 590 -220 760 -220 {
lab=VSS}
N 760 -220 930 -220 {
lab=VSS}
N 930 -220 1100 -220 {
lab=VSS}
N 1100 -220 1270 -220 {
lab=VSS}
N 1270 -220 1440 -220 {
lab=VSS}
N 1440 -220 1470 -220 {
lab=VSS}
N 250 -220 280 -220 {
lab=VSS}
N 820 -780 820 -740 {
lab=#net1}
N 820 -1040 820 -990 {
lab=VD}
N 580 -820 660 -820 {
lab=RES_N_1V8}
N 380 -340 410 -340 {
lab=BD_1V8[7]}
N 570 -340 600 -340 {
lab=BD_1V8[6]}
N 800 -820 800 -270 {
lab=VSS}
N 800 -270 800 -220 {
lab=VSS}
N 1470 -270 1470 -220 {
lab=VSS}
N 820 -1000 1610 -1000 {
lab=VD}
N 1470 -680 1590 -680 {
lab=VSS}
N 1470 -680 1470 -270 {
lab=VSS}
N 1610 -280 1640 -280 {
lab=VSS}
N 1640 -280 1640 -240 {
lab=VSS}
N 1610 -240 1640 -240 {
lab=VSS}
N 1610 -250 1610 -240 {
lab=VSS}
N 1610 -240 1610 -220 {
lab=VSS}
N 1470 -220 1610 -220 {
lab=VSS}
N 1610 -640 1610 -620 {
lab=#net2}
N 1470 -370 1590 -370 {
lab=VSS}
N 1610 -330 1610 -310 {
lab=#net3}
N 1370 -190 1570 -190 {
lab=R_IBPS_1V8}
N 1570 -280 1570 -190 {
lab=R_IBPS_1V8}
N 1610 -750 1610 -720 {
lab=VD}
N 1610 -870 1610 -830 {
lab=VD}
N 1470 -790 1590 -790 {
lab=VSS}
N 1470 -790 1470 -680 {
lab=VSS}
N 1470 -910 1590 -910 {
lab=VSS}
N 1470 -910 1470 -790 {
lab=VSS}
N 1610 -1000 1610 -950 {
lab=VD}
N 610 -740 820 -740 {
lab=#net1}
N 610 -740 610 -630 {
lab=#net1}
N 420 -980 820 -980 {
lab=VD}
N 1610 -530 1610 -510 {
lab=#net4}
N 1610 -620 1610 -610 {
lab=#net2}
N 1470 -570 1590 -570 {
lab=VSS}
N 1470 -470 1590 -470 {
lab=VSS}
N 1610 -430 1610 -410 {
lab=#net5}
N 460 -600 470 -600 {
lab=#net6}
N 650 -600 650 -590 {
lab=#net7}
N 470 -600 470 -560 {
lab=#net6}
N 650 -590 650 -560 {
lab=#net7}
N 420 -570 420 -540 {
lab=#net6}
N 420 -540 470 -540 {
lab=#net6}
N 470 -560 470 -540 {
lab=#net6}
N 610 -570 610 -530 {
lab=#net7}
N 610 -530 650 -530 {
lab=#net7}
N 650 -560 650 -530 {
lab=#net7}
N 450 -540 450 -420 {
lab=#net6}
N 640 -530 640 -420 {
lab=#net7}
N 640 -340 680 -340 {
lab=VSS}
N 450 -340 490 -340 {
lab=VSS}
N 820 -990 820 -980 {
lab=VD}
N 450 -420 450 -370 {
lab=#net6}
N 450 -310 450 -220 {
lab=VSS}
N 640 -420 640 -370 {
lab=#net7}
N 640 -310 640 -220 {
lab=VSS}
N 420 -980 420 -630 {
lab=VD}
N 820 -980 820 -860 {
lab=VD}
N 1610 -970 1660 -970 {
lab=VD}
N 1660 -970 1660 -860 {
lab=VD}
N 1610 -860 1660 -860 {
lab=VD}
N 1660 -860 1660 -740 {
lab=VD}
N 1610 -740 1660 -740 {
lab=VD}
C {devices/ipin.sym} 250 -220 0 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 820 -1040 3 0 {name=p2 lab=VD}
C {devices/ipin.sym} 330 -440 0 0 {name=p3 lab=BD_1V8[7:0]}
C {SUN_TR_SKY130NM/SUNTR_RPPO4.sym} 820 -860 1 0 {name=x9 }
C {devices/ipin.sym} 590 -820 0 0 {name=p12 lab=RES_N_1V8}
C {JNW_ATR_SKY130NM/JNWATR_NCH_12C1F2.sym} 410 -340 0 0 {name=x11 }
C {JNW_ATR_SKY130NM/JNWATR_NCH_12C1F2.sym} 600 -340 0 0 {name=x12 }
C {devices/lab_wire.sym} 380 -340 0 0 {name=p13 sig_type=std_logic lab=BD_1V8[7]}
C {devices/lab_wire.sym} 570 -340 0 0 {name=p14 sig_type=std_logic lab=BD_1V8[6]}
C {JNW_ATR_SKY130NM/JNWATR_NCH_12C1F2.sym} 1570 -280 0 0 {name=x2 }
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 1610 -410 1 0 {name=x3 }
C {devices/ipin.sym} 1370 -190 0 0 {name=p4 lab=R_IBPS_1V8}
C {SUN_TR_SKY130NM/SUNTR_RPPO4.sym} 1610 -830 1 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 1610 -950 1 0 {name=x5 }
C {sky130_fd_pr/pnp_05v5.sym} 630 -600 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 440 -600 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 1610 -510 1 0 {name=x1 }
C {devices/lab_wire.sym} 490 -340 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 680 -340 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 1610 -610 1 0 {name=x6 }
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 1610 -720 1 0 {name=x7 }
C {cborder/border_s.sym} 1410 -270 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
