module decoder
(
    input wire[7:0] in,
    output wire[2:0] out
);

assign out = in == 1 ? 0 : in == 2 ? 1 : in == 4 ? 2 : in == 8 ? 3 : in == 16 ? 4 : in == 32 ? 5 : in == 64 ? 6 : in == 128 ? 7 : 0;

endmodule

