vlib work
vlog decoder_24.v deocder_24_tb.v +acc
vsim work.deocder_24_tb -l
add wave -r *
run -all
