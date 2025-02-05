vlib work
vlog sipo.v sipo_tb.v +acc
vsim work.sipo_tb -l run.log
add wave -r *
run -all
