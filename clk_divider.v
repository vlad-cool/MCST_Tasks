module clk_divider
(
    input wire clk,
    input wire reset,
    output wire clk_out
);

reg [2:0] counter;

always @(posedge clk) begin
    if (reset) begin
        counter <= 0;
    end 
    else begin
        if (counter == 5) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end

end

assign clk_out = counter >= 3 ? 1 : 0;

endmodule
