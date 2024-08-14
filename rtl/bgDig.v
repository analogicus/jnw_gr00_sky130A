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
                output logic       valid,
                output logic rst
                );

   parameter                       RESET=0,
                                   DIODE=1,
                                   BIGDIODE=2,
                                   COMPARE=3,
                                   INCREMENT=4,
                                   OUTPUT=5;

   //logic                           rst;
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
              resPtatEnable_n <= 0;
              idacOutSelect_n[0] <= 0;
              idacOutSelect_n[1] <= 1;
              diodeSelect <= 8'h80;
              c1 <= 2;
              c2 <= 0;

              if(count == 3) begin
                 state <= BIGDIODE;
                 count <=0;
              end
              else begin
                 count <= count +1;
              end

           end
           BIGDIODE: begin
              resPtatEnable_n <= 0;
              diodeSelect <= 8'h7F;
              c1 <= 0;
              c2 <= 2;

              if(count == 5) begin
                 state <= COMPARE;
                 count <=0;
              end
              else begin
                 count <= count +1;
              end

           end
           COMPARE: begin
              state <= INCREMENT;
              c1 <= 1;
              c2 <= 1;
              //diodeSelect <= 8'h00;
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
                    idacFine[7] <= 1;

                 end
                 state <= DIODE;
              end
              else begin

                 //SAR algorithm
                 if(sar_ind < 4) begin
                    if(CMPO)
                      idacFine[7-sar_ind] <= 0;
                    else
                      idacFine[7-sar_ind] <= 1;

                    sar_ind <= sar_ind +1;
                 end
                 if(sar_ind < 4) begin
                    idacFine[7-sar_ind-1] <= 1;
                 end

                 if(sar_ind == 4) begin
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

                 //state <= OUTPUT;
              end // else: !if(coarse)
              count <= 0;
           end
           OUTPUT: begin
              idacOutSelect_n[0] <= 1;
              idacOutSelect_n[1] <= 0;
              diodeSelect <= 8'h00;

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
              idacFine <= 8'h00;
              sar_ind <= 0;
              coarse <= 1;
              idacOutSelect_n[0] <= 0;
              idacOutSelect_n[1] <= 1;
              idacOutSelect_n[2] <= 1;
              idacOutSelect_n[3] <= 1;
              diodeSelect <= 8'h80;
              resPtatEnable_n <= 0;
              valid <= 0;
              if(count > 3) begin
                 count <= 0;
                 c1 <= 0;
                 c1 <= 0;
                 state <= DIODE;
              end
              else begin
                 c1 <= 2;
                 c2 <= 2;
                 count <= count +1;
                 state <= RESET;

            end
           end
         endcase // case (state)

         if(!pwrup) begin
            idacFine <= 8'h00;
            idacCoarse <= 8'h00;
            count <= 0;
        end
      end
   end
endmodule
