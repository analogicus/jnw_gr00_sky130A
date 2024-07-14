`default_nettype none
module idac_tb (
    input wire       clk, // expect a 10M clock
    input wire       reset,
    output reg [7:0] ib         // 8 bit out to the R2R DAC
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
            ib <= 8'hFF;
           end
        else begin
           ib <= ib - 1;
        end
    end

endmodule
