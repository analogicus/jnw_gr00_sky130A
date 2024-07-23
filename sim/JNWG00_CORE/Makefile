

all: typical etc mc summary

include ../../tech/make/sim.make

TB=ptat
VIEW=Sch
#VIEW=Lay
CELL=JNWG00_CORE
LIB =JNW_GR00_SKY130NM
CICOPT=


all:
#- Run PTAT configuration of bandgap
	make mc tfs TB=ptat

#- Run stable current configuration of bandgap
	make mc tfs TB=stable

ver: ../../verilog/core_tb.v

		ngspice vlnggen ../../verilog/core_tb.v

stable:
	echo "* Set stable current with temperature\nVris R_IBPS_1V8 0 dc {AVDD}\n" > stable.spi
	cat ptat.spi >> stable.spi
test:
	${MAKE} typical CICOPT="Debug"

worst: netlist ver
	cicsim run  --replace replace.yaml --name ${VIEW}_typical ${TB} ${CICOPT} ${VIEW} Gt Kss Tt Vl


typical: netlist ver stable
	cicsim run  --replace replace.yaml --name ${VIEW}_typical ${TB} ${CICOPT} ${VIEW} Gt Ktt Tt Vt

tfs: netlist stable
	cicsim run  --replace replace.yaml --name ${VIEW}_tfs ${TB} ${CICOPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" "Vt,Vl,Vh"

etc: netlist stable
	cicsim run  --replace replace.yaml --name ${VIEW}_etc ${TB} ${CICOPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Tt" "Vl,Vh"

mc: netlist stable
	cicsim run  --replace replace.yaml --name ${VIEW}_mc --count 10 ${TB} ${CICOPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist stable
	cicsim run  --replace replace.yaml --name ${VIEW}_ntc ${TB} ${CICOPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist stable
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
