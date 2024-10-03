module decoder
(
    input wire[7:0] in,
    output wire[2:0] out
);

assign out = ({in[0], in[0], in[0], in[0],  in[0], in[0], in[0], in[0]} & 0) | 
             ({in[1], in[1], in[1], in[1],  in[1], in[1], in[1], in[1]} & 1) |
             ({in[2], in[2], in[2], in[2],  in[2], in[2], in[2], in[2]} & 2) |
             ({in[3], in[3], in[3], in[3],  in[3], in[3], in[3], in[3]} & 3) |
             ({in[4], in[4], in[4], in[4],  in[4], in[4], in[4], in[4]} & 4) |
             ({in[5], in[5], in[5], in[5],  in[5], in[5], in[5], in[5]} & 5) |
             ({in[6], in[6], in[6], in[6],  in[6], in[6], in[6], in[6]} & 6) |
             ({in[7], in[7], in[7], in[7],  in[7], in[7], in[7], in[7]} & 7);

endmodule

