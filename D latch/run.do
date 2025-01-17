vlib work
vlog d_latch.sv d_latch_tb.sv +acc
vsim work.d_latch_tb -l
add wave -r *
run -all
