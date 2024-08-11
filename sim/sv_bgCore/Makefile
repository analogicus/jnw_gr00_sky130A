
ps:
	iverilog -g2012 -o bgCore -I../../rtl/ -c bgCore_tb.fl
	vvp -n bgCore

synth:
	yosys ../../rtl/bgCore.ys


test: ps synth
