vlib work
vlog t_ff_bh.v t_tb.v +acc
vsim work.t_ff_tb -l
add wave -r *
run -all
