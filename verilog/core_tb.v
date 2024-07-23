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
                output logic       coarse,
                output logic       valid
                );

   parameter                       RESET=0, DIODE=1,BLANK1=2,BIGDIODE=3,
                                   BLANK2=4,COMPARE=5, INCREMENT=6,OUTPUT=7;

   logic                           rst;
   logic [4:0]                     sar_ind;
   logic [3:0]                     valid_count;

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
              idac_o[0] <= 0;
              idac_o[1] <= 1;
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
              if(coarse) begin

                 //SAR algorithm
                 if(sar_ind < 8) begin
                    if(cmp_o)
                      ib[7-sar_ind] <= 0;
                    else
                      ib[7-sar_ind] <= 1;

                    sar_ind <= sar_ind +1;
                 end
                 if(sar_ind < 7) begin
                    ib[7-sar_ind-1] <= 1;
                 end

                 if(sar_ind == 8) begin
                    coarse <= 0;
                    sar_ind <= 0;
                 end
                 state <= DIODE;
              end
              else begin

                 //SAR algorithm
                 if(sar_ind < 8) begin
                    if(cmp_o)
                      ibf[7-sar_ind] <= 0;
                    else
                      ibf[7-sar_ind] <= 1;

                    sar_ind <= sar_ind +1;
                 end
                 if(sar_ind < 7) begin
                    ibf[7-sar_ind-1] <= 1;
                 end

                 if(sar_ind == 8) begin
                    if(cmp_o)
                      ibf <= ibf -1;
                    else
                      ibf <= ibf +1;

                    state <= OUTPUT;
                    valid_count <= 0;
                 end
                 else begin
                    state <= DIODE;
                    end
              end
           end
           OUTPUT: begin
              idac_o[0] <= 1;
              idac_o[1] <= 0;

              if(valid_count > 1)
                valid <= 1;
              if(valid_count > 3) begin
                state <= DIODE;
                valid <= 0;
                end
              valid_count <= valid_count +1;
              end
           RESET: begin
              ib <= 8'h80;
              ibf <= 8'h80;
              sar_ind <= 0;
              coarse <= 1;
              idac_o[0] <= 0;
              idac_o[1] <= 1;
              idac_o[2] <= 1;
              idac_o[3] <= 1;
              diode <= 8'hFF;
              res_n <= 1;
              state <= DIODE;
              c1 <= 0;
              c2 <= 0;
              valid <= 0;
              valid_count <=0;
           end
         endcase
      end
   end
endmodule
