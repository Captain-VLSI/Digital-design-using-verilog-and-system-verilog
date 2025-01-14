vlib work
vlog encoder_8_3.sv encoder_8_3_tb.sv +acc
vsim work.encoder_8_3_tb -l
add wave -r *
run -all
