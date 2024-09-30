`timescale 1ns/1ps

module testbench;

initial begin
    $dumpfile("pulse_generator_out.vcd");
    $dumpvars(0, testbench);
end

reg clk;
reg reset;

initial begin
    clk = 0;
    reset = 1;
end

always #1 clk = ~clk;

pulse_generator PULSE_GEN(
    .clk(clk),
    .reset(reset)
);

initial begin
    #10;
    reset = 0;
    #10000;
    $finish;
end

endmodule
