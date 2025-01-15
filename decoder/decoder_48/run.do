vlib work
vlog decoder_38.v decoder_38_tb.v +acc
vsim work.decoder_38_tb -l
add wave -r *
run -all
