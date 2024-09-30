TARGETS := parity clk_divider pulse_generator decoder

.PHONY: clean all

all: $(TARGETS)

%: %.v %_test.v
	iverilog $< -o $@

clean:
	rm $(TARGETS)
