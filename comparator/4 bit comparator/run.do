vlib work
vlog comparator.v comparator_tb.v +acc
vsim work.comparator_tb -l
add wave -r *
run -all
