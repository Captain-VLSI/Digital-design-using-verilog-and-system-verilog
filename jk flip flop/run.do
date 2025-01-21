vlib work
vlog jk_ff_bh.v jk_tb.v +acc
vsim work.jk_tb -l
add wave -r *
run -all
