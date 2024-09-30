module clk_divider
(
    input wire clk,
    input wire reset,
    output wire clk_out
);

reg [3:0] counter;

always @(posedge clk) begin
    if (reset) begin
        counter <= 0;
    end 
    else begin
        counter <= counter + 1;
    end

    if (counter == 11) begin
        counter <= 0;
    end
end

assign clk_out = counter >= 6 ? 1 : 0;
// assign clk_out = counter == 5 ? ~clk_out : clk_out;

endmodule
