module test_div_3
#(
    parameter size = 32
)
(
    input wire[size - 1:0] in,
    output wire out
);

generate

if (size <= 3) begin
    assign out = (in == 6) | (in == 3) | (in == 0);
end
else begin

wire [$clog2(((size + 1) / 2) * 3) - 1:0] buffer [size-1:0];

assign buffer [0] = in[1:0];

genvar i;

for (i = 1; i < (size + 1) / 2; i = i + 1)
begin : main_loop
    assign buffer[i] = buffer[i - 1] + in[i * 2 + 1 : i * 2];
end

test_div_3 #(.size($clog2(((size + 1) / 2) * 3))) module_inner (.in(buffer[(size + 1) / 2 - 1]), .out(out));

end

endgenerate

endmodule