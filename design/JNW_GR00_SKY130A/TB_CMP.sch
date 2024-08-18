v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 840 -920 1640 -520 {flags=graph
y1=0

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=1u
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
color="5 8 12"
node="xdut.vbp
xdut.vbn
vcp"
x1=0
y2=1}
B 2 840 -500 1640 -100 {flags=graph
y1=0

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=1u
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran

color="8 6 13 15"
node="xdut.vsn1
xdut.vsn2
xdut.vsn3
xdut.vsn4"
x1=0
y2=0.4}
T {Operation point Test Bench} 170 -980 0 0 1 1 {}
T {Set "Simulation-> Use 'simulation' dir 
in schematic dir" before netlist/simulation} 30 -870 0 0 0.5 0.5 {}
N 280 -250 280 -230 {
lab=GND}
N 280 -330 280 -250 {
lab=GND}
N 100 -330 100 -240 {
lab=GND}
N 100 -240 280 -240 {
lab=GND}
N 100 -620 100 -390 {
lab=#net1}
N 700 -660 760 -660 {
lab=CMPO}
N 340 -660 400 -660 {
lab=VDD_1V8}
N 340 -660 340 -390 {
lab=VDD_1V8}
N 100 -640 400 -640 {
lab=#net1}
N 100 -640 100 -620 {
lab=#net1}
N 370 -540 400 -540 {
lab=GND}
N 370 -540 370 -240 {
lab=GND}
N 280 -240 370 -240 {
lab=GND}
N 340 -580 400 -580 {
lab=VDD_1V8}
N 370 -620 400 -620 {
lab=VDD_1V8}
N 700 -640 760 -640 {
lab=VCP}
N 700 -620 760 -620 {
lab=IBN}
N 340 -560 400 -560 {
lab=VDD_1V8}
N 340 -600 400 -600 {
lab=VDD_1V8}
N 280 -390 340 -390 {
lab=VDD_1V8}
N 340 -620 370 -620 {
lab=VDD_1V8}
C {devices/vsource.sym} 280 -360 0 0 {name=V1 value=\{vdda\}}
C {devices/gnd.sym} 280 -230 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 330 -390 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/vsource.sym} 100 -360 0 0 {name=V2 value=0.9}
C {devices/lab_wire.sym} 760 -660 0 1 {name=p2 sig_type=std_logic lab=CMPO}
C {devices/simulator_commands.sym} 670 -390 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include corner.spi
"}
C {JNW_GR00_SKY130A/JNWG00_CMP.sym} 550 -600 0 0 {name=xdut}
C {devices/lab_wire.sym} 760 -640 0 1 {name=p3 sig_type=std_logic lab=VCP}
C {devices/lab_wire.sym} 760 -620 0 1 {name=p4 sig_type=std_logic lab=IBN}
C {cborder/border_s.sym} 1250 -170 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"
spice_ignore=true}
C {devices/launcher.sym} 550 -180 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_CMP_tran.raw tran"
}
