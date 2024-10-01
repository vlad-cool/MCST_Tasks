TARGETS := parity clk_divider pulse_generator decoder test_div_3

.PHONY: clean all

all: $(addsuffix .vvp, $(TARGETS))

%.vvp: %.v %_test.v
	iverilog $^ -o $@

clean:
	rm -f *.vvp
	rm -f *.vcd
