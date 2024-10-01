module testbench;

reg [31:0] input_data;
wire [1:0] output_data;

test_div_3 tested_module 
(
    .in(input_data),
    .out(output_data)
);


initial begin
    input_data = 'b11111111111111111111111111111111 - 100000;

    repeat (100020) begin
        #1
        $display("Input:  %d", input_data);
        $display("Output: %d, %d", output_data, input_data % 3);
        input_data = input_data + 1;
    end

    $finish;
end

endmodule