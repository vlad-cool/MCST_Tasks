module testbench;

reg[31:0] input_data;

parity #(.size(32)) tested_module (
    .in(input_data),
    .out(output_data)
);

initial begin
    input_data <= 32'b01010110101011100000111111110000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 32'b11111111111111111111111111111111;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 32'b01111111111111111111111111111111;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 32'b00000000000000000000000000000000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 32'b10100001101001011000111001101000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    $finish;
end

endmodule