vlib work
vlog q3.v q3_tb.v
vsim -voptargs=+acc work.shift_register_tb
add wave *
run -all
#quit -sim