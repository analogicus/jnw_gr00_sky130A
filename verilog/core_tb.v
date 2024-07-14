`default_nettype none
module core_tb (
    input wire       clk, // expect a 10M clock
    input wire       reset,
    output reg [7:0] ib,
    output reg [7:0] ibf,
    output reg       res_n,
    output reg [7:0] diode,
    output reg [3:0] idac_o
    );

    reg rst;

    initial begin
       //$dumpfile ("idac_tb.vcd");
        //$dumpvars (0, idac_tb);
    end

   always_ff @(posedge clk or posedge reset) begin
        if(reset)
            rst <= 1'b1;
        else
            rst <= 1'b0;
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            ib <= 8'h7F;
            ibf <= 8'h0;
           res_n <= 1;
           diode <= 8'hFF;
           idac_o <= 3'h7-1;
           end
        else begin
           //ib <= ib - 1;
           ibf <= ibf +1;
           res_n <= ~res_n;


        end
    end

endmodule
