TARGETS := parity clk_divider pulse_generator decoder test_div_3

.PHONY: clean all

all: $(TARGETS)

%: %.v %_test.v
	iverilog $@.v $@_test.v -o $@

clean:
	rm $(TARGETS)
