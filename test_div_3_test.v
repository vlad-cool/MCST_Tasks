module testbench;

reg [31:0] input_data;
wire output_data;

test_div_3 tested_module 
(
    .in(input_data),
    .out(output_data)
);


initial begin
    input_data = 'b11111111111111111111111111111111 - 100000;

    repeat (100040) begin
        #1
        $display("Input:  %d", input_data);
        $display("Output: %d", output_data == (input_data % 3) == 0);
        input_data = input_data + 1;
    end

    $finish;
end

endmodule