module decoder
(
    input wire[7:0] in,
    output wire[2:0] out
);

assign out = ({8{in[0]}} & 0) | 
             ({8{in[1]}} & 1) |
             ({8{in[2]}} & 2) |
             ({8{in[3]}} & 3) |
             ({8{in[4]}} & 4) |
             ({8{in[5]}} & 5) |
             ({8{in[6]}} & 6) |
             ({8{in[7]}} & 7);

endmodule

