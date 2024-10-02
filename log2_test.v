module testbench;

reg [7:0] input_data;
wire [2:0] output_data;

decoder tested_module (
    .in(input_data),
    .out(output_data)
);

initial begin
    input_data <= 0;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 1;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 2;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 4;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 8;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 16;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 32;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    $finish;
end

endmodule