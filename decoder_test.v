module testbench;

reg [2:0] input_data;
wire [7:0] output_data;

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
    
    input_data <= 3;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 4;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    input_data <= 5;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);

    input_data <= 6;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);


    input_data <= 7;
    #1
    $display("Input: %b", input_data);
    $display("Output: %b", output_data);
    
    $finish;
end

endmodule