

all: typical etc mc summary

include ../../tech/make/sim.make

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=JNWG00_CORE
LIB =JNW_GR00_SKY130NM
CICOPT=


ver: ../../verilog/core_tb.v

		ngspice vlnggen ../../verilog/core_tb.v


test:
	${MAKE} typical CICOPT="Debug"

typical: netlist ver
	cicsim run  --replace replace.yaml --name ${VIEW}_typical ${TB} ${CICOPT} ${VIEW} Gt Ktt Tt Vt

slow: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_slow ${TB} ${CICOPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_fast ${TB} ${CICOPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_tfs ${TB} ${CICOPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"

etc: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_etc ${TB} ${CICOPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

mc: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_mc --count 30 ${TB} ${CICOPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_ntc ${TB} ${CICOPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run  --replace replace.yaml --name ${VIEW}_temp ${TB} ${CICOPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

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
