`default_nettype none
`timescale 1 ns / 1 ps

module bgCore_tb;

   logic reset = 0;

   logic clk = 0;
   always #5 clk = !clk;


   logic VDD_1V8  = 1;
   logic VSS = 0;
   logic cmp_o  = 0;


   wire  IOUT;
   wire  VP;
   wire  VN;
   logic pwrup = 0;
   wire [7:0] idacFine;
   wire [7:0] idacCoarse;
   wire [3:0] idacOutSelect_n;
   wire [7:0] diodeSelect;
   wire       resStableSelect;
   wire       resPtatEnable_n;
   wire [1:0] c1;
   wire [1:0] c2;
   wire [2:0] state;
   wire      coarse;
   wire      valid;

   
bgCore
xdut1(
      .VDD_1V8(VDD_1V8),
      .VSS(VSS),
      .IOUT(IOUT),
      .VP(VP),
      .VN(VN),
      .pwrup(pwrup),
      .idacFine(idacFine),
      .idacCoarse(idacCoarse),
      .idacOutSelect_n(idacOutSelect_n),
      .diodeSelect(diodeSelect),
      .resStableSelect(resStableSelect),
      .resPtatEnable_n(resPtatEnable_n),
      .c1(c1),
      .c2(c2)
      );

core_tb
xstim(
      .clk(clk),
      .reset(reset),
      .cmp_o(cmp_o),
      .ib(idacCoarse),
      .ibf(idacFine),
      .res_n(resPtatEnable_n),
      .diode(diodeSelect),
      .idac_o(idacOutSelect_n),
      .state(state),
      .c1(c1),
      .c2(c2),
      .coarse(coarse),
      .valid(valid)
      );

   initial
    begin
       $dumpfile("bgCore_tb.vcd");
       $dumpvars(0,bgCore_tb);

       #10 reset = 1;
       #10 reset = 0;

       #2600 $stop;

    end


endmodule // bgCore_tb
