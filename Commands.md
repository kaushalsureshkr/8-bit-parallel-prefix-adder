
iverilog -o prefix prefix_adder.v tb_prefix_adder.v

vvp prefix

gtkwave dump.vcd
