`default_nettype none
module idac_tb (
    input wire       clk, // expect a 10M clock
    input wire       reset,
    output reg [7:0] ib,
    output reg [7:0] ibf
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
           end
        else begin
           //ib <= ib - 1;
           ibf <= ibf +1;
        end
    end

endmodule
