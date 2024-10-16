module decoder
#(
    parameter size = 8
)
(
    input wire[size - 1:0] in,
    output wire[$clog2(size) - 1:0] out
);

wire tmp[size - 1:0];

genvar i;

generate
    assign tmp[0] = {size{in[0]}} & 0;
    for (i = 1; i < size; i = i + 1)
    begin
        assign tmp[i] = tmp[i - 1] | ({size{in[i]}} & i);
    end
endgenerate

assign out = tmp[size - 1];

endmodule

