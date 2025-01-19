vlib work
vlog d_ff.v d_ff_tb.sv +acc
vsim work.d_ff_tb -l
add wave -r *
run -all
