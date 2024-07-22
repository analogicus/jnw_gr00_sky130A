`default_nettype none
module core_tb (
                input wire         clk, // expect a 10M clock
                input wire         reset,
                input wire         cmp_o,
                output logic [7:0] ib,
                output logic [7:0] ibf,
                output logic       res_n,
                output logic [7:0] diode,
                output logic [3:0] idac_o,
                output logic [2:0] state,
                output logic [1:0] c1,
                output logic [1:0] c2,
                output logic       coarse
                );

   parameter                       RESET=0, DIODE=1,BLANK1=2,BIGDIODE=3,BLANK2=4,COMPARE=5, INCREMENT=6,BLANK3=7;


   logic                           rst;
   logic                           prev_cmp;
   //logic                           coarse;

   initial begin
      //$dumpfile ("idac_tb.vcd");
      //$dumpvars (0, idac_tb);
   end

   always_ff @(posedge clk) begin

   end

   always_ff @(posedge clk or posedge reset) begin
      if(reset)
        rst <= 1'b1;
      else
        rst <= 1'b0;
   end

   always_ff @(posedge clk) begin
      if(rst) begin
         state <= RESET;
      end
      else begin
         case(state)
           DIODE: begin
              res_n <= 1;
              diode <= 8'h01;
              state <= BLANK1;
              c1 <= 2;
              c2 <= 0;
           end
           BLANK1: begin
              c1 <= 0;
              state <= BIGDIODE;
           end
           BIGDIODE: begin
              res_n <= 0;
              diode <= 8'hFF;
              state <= BLANK2;
              c1 <= 0;
              c2 <= 2;
           end
           BLANK2: begin
              state <= COMPARE;
              c2 <= 0;
           end
           COMPARE: begin
              state <= INCREMENT;
              c1 <= 1;
              c2 <= 1;
           end
           INCREMENT: begin

              if(prev_cmp != cmp_o)
                coarse <= 0;

              if(coarse && prev_cmp == cmp_o) begin
                 if(cmp_o)
                   ib <= ib -4;
                 else
                   ib <= ib +4;
              end
              else begin
                 if(cmp_o)
                   ibf <= ibf -1;
                 else
                   ibf <= ibf +1;
              end

              state <= DIODE;

           end
           BLANK3: begin
              c1 <= 0;
              c2 <= 0;
              end
           RESET: begin
              ib <= 8'h7F;
              ibf <= 8'h3F;
              coarse <= 1;
              prev_cmp <= 0;
              idac_o <= 3'h7-1;
              diode <= 8'hFF;
              res_n <= 1;
              state <= DIODE;
              c1 <= 0;
              c2 <= 0;
           end
         endcase
      end
   end

endmodule
