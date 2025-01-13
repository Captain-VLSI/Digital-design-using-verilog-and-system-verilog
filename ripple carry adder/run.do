vlib work
vlog CLA_adder.v CLA_adder_tb.v +acc
vsim work.carry_look_head_adder_tb -l
add wave -r *
run -all
