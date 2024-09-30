module parity
#(
    parameter size = 8
)
(
    input wire[size-1:0] in,
    output wire out
);

assign out = in[0];

endmodule

