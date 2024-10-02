module testbench;

reg [7:0] input_data;
wire [2:0] output_data;

encoder tested_module (
    .in(input_data),
    .out(output_data)
);

initial begin
    input_data <= 'b10100000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 'b00100000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 'b00101110;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 'b00000001;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 'b00000000;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 'b00000101;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 'b00000011;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 'b00000111;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    $finish;
end

endmodule