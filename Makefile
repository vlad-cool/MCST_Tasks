.PHONY: clean all

all: parity clk_divider pulse_generator

parity: parity.v
	iverilog parity.v parity_test.v -o parity

clk_divider: clk_divider.v clk_divider_test.v
	iverilog clk_divider.v clk_divider_test.v -o clk_divider

pulse_generator: pulse_generator.v pulse_generator.v
	iverilog pulse_generator.v pulse_generator_test.v -o pulse_generator
