module test_div_3
(
    input wire[31:0] in,
    output wire[1:0] out
);

wire[31:0] w1;
wire[31:0] w2;
wire[31:0] w3;
wire[31:0] w4;
wire[31:0] w5;
wire[31:0] w6;
wire[31:0] w7;
wire[31:0] w8;
wire[31:0] w9;
wire[31:0] w10;
wire[31:0] w11;
wire[31:0] w12;
wire[31:0] w13;

test_div_3_inner #(.size(32)) m1 (.in(in), .out(w1)) ;
test_div_3_inner #(.size(32)) m2 (.in(w1), .out(w2)) ;
test_div_3_inner #(.size(32)) m3 (.in(w2), .out(w3)) ;
test_div_3_inner #(.size(32)) m4 (.in(w3), .out(w4));
test_div_3_inner #(.size(32)) m5 (.in(w4), .out(w5));
test_div_3_inner #(.size(32)) m6 (.in(w5), .out(w6));
test_div_3_inner #(.size(32)) m7 (.in(w6), .out(w7));
test_div_3_inner #(.size(32)) m8 (.in(w7), .out(w8));
test_div_3_inner #(.size(32)) m9 (.in(w8), .out(w9));
test_div_3_inner #(.size(32)) m10 (.in(w9), .out(w10));
test_div_3_inner #(.size(32)) m11 (.in(w10), .out(w11));
test_div_3_inner #(.size(32)) m12 (.in(w11), .out(w12));
test_div_3_inner #(.size(32)) m13 (.in(w12), .out(w13));
test_div_3_inner #(.size(32)) m14 (.in(w13), .out(out));

endmodule

module test_div_3_inner
#(
    parameter size = 2
)
(
    input wire [size-1:0] in,
    output wire [size - 1:0] out
);

wire [size-1:0] buffer [(size + 1) / 2 - 1:0];

assign buffer[0] = in[1:0];

genvar i;

generate
    for (i = 1; i < (size + 1) / 2; i = i + 1)
    begin : main_loop
assign buffer[i] = buffer[i - 1] + in[i * 2 + 1 : i * 2];
    end
endgenerate

// initial begin
//     #1
//     $display("in    : %b", in);
//     $display("buf[0]: %b", buffer[0]);
//     $display("buf[1]: %b", buffer[1]);
//     $display("buf[2]: %b", buffer[2]);
//     $display("buf[3]: %b", buffer[3]);
//     $display("buf[4]: %b", buffer[4]);
//     $display("buf[5]: %b", buffer[5]);
//     $display("buf[6]: %b", buffer[6]);
//     $display("buf[7]: %b", buffer[7]);
// end

assign out = buffer[(size + 1) / 2 - 1];

endmodule