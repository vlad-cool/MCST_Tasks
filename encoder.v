module encoder
(
    input wire[7:0] in,
    output wire[2:0] out
);

assign out = (in & 128) == 128 ? 7 :
             (in &  64) ==  64 ? 6 :
             (in &  32) ==  32 ? 5 :
             (in &  16) ==  16 ? 4 :
             (in &   8) ==   8 ? 3 :
             (in &   4) ==   4 ? 2 :
             (in &   2) ==   2 ? 1 : 0;

endmodule

