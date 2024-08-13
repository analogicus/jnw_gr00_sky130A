`default_nettype none
module bgDig (
                input wire         clk, // expect a 10M clock
                input wire         reset,
                input logic        pwrup,
                input wire         CMPO,
                output logic [7:0] idacFine,
                output logic [7:0] idacCoarse,
                output logic [3:0] idacOutSelect_n,
                output logic [7:0] diodeSelect,
                output logic       resPtatEnable_n,
                output logic       resStableSelect,
                output logic [1:0] c1,
                output logic [1:0] c2,
                output logic       cmpZeroOffset,
                output logic       cmpSwapInput,
                output logic [3:0] state,
                output logic       coarse,
                output logic       valid
                );

   parameter                       RESET=0,
                                   DIODE=1,
                                   BLANK1=2,
                                   BIGDIODE=3,
                                   BLANK2=4,
                                   COMPARE=5,
                                   SETTLE=6,
                                   INCREMENT=7,
                                   OUTPUT=8;

   logic                           rst;
   logic [4:0]                     sar_ind;
   logic [3:0]                     count;

   always_ff @(posedge clk or posedge reset) begin
      if(reset)
        rst <= 1'b1;
      else
        rst <= 1'b0;
   end

   always_ff @(posedge clk) begin
      if(rst) begin
         state <= RESET;
         resStableSelect <= 0;
         cmpZeroOffset <= 0;
         cmpSwapInput <= 0;
      end
      else begin
         case(state)
           DIODE: begin
              resPtatEnable_n <= 1;
              idacOutSelect_n[0] <= 0;
              idacOutSelect_n[1] <= 1;
              diodeSelect <= 8'h01;
              state <= BLANK1;
              c1 <= 2;
              c2 <= 0;
           end
           BLANK1: begin
              c1 <= 0;
              state <= BIGDIODE;
           end
           BIGDIODE: begin
              resPtatEnable_n <= 0;
              diodeSelect <= 8'hFF;
              state <= BLANK2;
              c1 <= 0;
              c2 <= 2;
           end
           BLANK2: begin
              state <= COMPARE;
              c2 <= 0;
           end
           COMPARE: begin
              state <= SETTLE;
              c1 <= 1;
              c2 <= 1;
           end
           SETTLE: begin
              state <= INCREMENT;
           end
           INCREMENT: begin
              if(coarse) begin

                 //SAR algorithm
                 if(sar_ind < 8) begin
                    if(CMPO)
                      idacCoarse[7-sar_ind] <= 0;
                    else
                      idacCoarse[7-sar_ind] <= 1;

                    sar_ind <= sar_ind +1;
                 end

                 if(sar_ind < 7) begin
                    idacCoarse[7-sar_ind-1] <= 1;
                 end
                 else if(sar_ind == 7) begin
                    coarse <= 0;
                    sar_ind <= 0;
                 end
                 state <= DIODE;
              end
              else begin
                 /*
                 //SAR algorithm
                 if(sar_ind < 8) begin
                    if(CMPO)
                      idacFine[7-sar_ind] <= 1;
                    else
                      idacFine[7-sar_ind] <= 0;

                    sar_ind <= sar_ind +1;
                 end
                 if(sar_ind < 7) begin
                    idacFine[7-sar_ind-1] <= 0;
                 end

                 if(sar_ind == 8) begin
                    //if(CMPO)
                    //  idacFine <= idacFine +1;
                    //else
                    //  idacFine <= idacFine - 1;

                    state <= OUTPUT;
                    count <= 0;
                 end
                 else begin
                    state <= DIODE;
                    end
                  */
                 state <= OUTPUT;
              end
           end
           OUTPUT: begin
              idacOutSelect_n[0] <= 1;
              idacOutSelect_n[1] <= 0;

              if(count > 1)
                valid <= 1;
              if(count > 3) begin
                state <= DIODE;
                valid <= 0;
                end
              count <= count +1;
              end
           RESET: begin
              idacCoarse <= 8'h80;
              idacFine <= 8'h7F;
              sar_ind <= 0;
              coarse <= 1;
              idacOutSelect_n[0] <= 0;
              idacOutSelect_n[1] <= 1;
              idacOutSelect_n[2] <= 1;
              idacOutSelect_n[3] <= 1;
              diodeSelect <= 8'hFF;
              resPtatEnable_n <= 1;
              state <= DIODE;
              c1 <= 2;
              c2 <= 2;
              valid <= 0;
              count <= count +1;
              if(count > 3) begin
                state <= DIODE;
                 count <= 0;
                 c1 <= 0;
                 c1 <= 0;
              end
           end
         endcase // case (state)

         if(!pwrup) begin
            idacFine <= 8'hFF;
            idacCoarse <= 8'h00;
        end
      end
   end
endmodule
