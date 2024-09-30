module decoder
(
    input wire[2:0] in,
    output wire[7:0] out
);

assign out = 8'b00000001 << in;

endmodule

