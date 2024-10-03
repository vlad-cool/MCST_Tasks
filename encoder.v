module encoder
(
    input wire[7:0] in,
    output wire[2:0] out
);

assign out = in[7] == 1 ? 7 :
             in[6] == 1 ? 6 :
             in[5] == 1 ? 5 :
             in[4] == 1 ? 4 :
             in[3] == 1 ? 3 :
             in[2] == 1 ? 2 :
             in[1] == 1 ? 1 : 0;

endmodule

