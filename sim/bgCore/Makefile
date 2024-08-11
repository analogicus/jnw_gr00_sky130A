

all: typical etc mc summary

include ../../tech/make/sim.make

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=bgCore
LIB =JNW_GR00_SKY130NM
COPT=


netlist:
	make netlist_sv
	-rm bgDig.so
	-rm -rf bgDig_obj_dir
	ngspice vlnggen ../../rtl/bgDig.v
	perl ../../tech/script/gensvinst ../../rtl/bgDig.v bgDig

test:
	${MAKE} typical COPT="Debug"

typical: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_typical ${TB} ${COPT} ${VIEW} Gt Ktt Tt Vt

slow: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_slow ${TB} ${COPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_fast ${TB} ${COPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tfs ${TB} ${COPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"

etc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_etc ${TB} ${COPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

mc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_mc --count 30 ${TB} ${COPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_ntc ${TB} ${COPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_temp ${TB} ${COPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

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
