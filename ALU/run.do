vlib work
vlog alu_4bit.v alu_4bit_tb.v +acc
vsim work.alu_4bit_tb -l
add wave -r *
run -all
