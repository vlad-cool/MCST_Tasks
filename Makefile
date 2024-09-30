.PHONY: clean all

all: parity clk_divider

parity: parity.v
	iverilog parity.v -o counter

clk_divider: clk_divider.v clk_divider_test.v
	iverilog clk_divider.v clk_divider_test.v -o clk_divider
