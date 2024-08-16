

all: typical etc mc summary

include ../../tech/make/sim.make

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=bgCore
LIB =JNW_GR00_SKY130NM
COPT=
MODE=Stable

all:
	make typical MODE=Ptat
	make typical MODE=Stable
	make tfs mc MODE=Ptat
	make tfs mc MODE=Stable

netlist:
	make netlist_sv
	-rm bgDig.so
	-rm -rf bgDig_obj_dir
	ngspice vlnggen ../../rtl/bgDig.v
	perl ../../tech/script/gensvinst ../../rtl/bgDig.v bgDig

test:
	${MAKE} typical COPT="Debug"

typical: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_typical ${TB} ${COPT} ${VIEW} ${MODE} Gt Ktt Tt Vt

slow: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_slow ${TB} ${COPT} ${VIEW} ${MODE} Gt Kss "Th,Tl" Vl

fast: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_fast ${TB} ${COPT} ${VIEW} ${MODE} Gt Kff "Th,Tl" Vh

tfs: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_tfs ${TB} ${COPT} ${VIEW} ${MODE} Gt "Ktt,Kss,Kff" "Tt" "Vt,Vl,Vh"

etc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_etc ${TB} ${COPT} ${VIEW} ${MODE} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

mc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_mc --count 10 ${TB} ${COPT} ${VIEW} ${MODE} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_ntc ${TB} ${COPT} ${VIEW} ${MODE} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_${MODE}_temp ${TB} ${COPT} ${VIEW} ${MODE} Gt "Ktt" "Tt,Th,Tl" Vt

summary:
	cicsim summary --output "README.md"

slide:
	pandoc -s  -t slidy README.md -o README.html


clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
