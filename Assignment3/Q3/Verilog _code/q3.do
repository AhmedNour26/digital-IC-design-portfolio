vlib work
vlog q3.v q3_tb.v
vsim -voptargs=+acc work.counter10_tb
add wave *
run -all
#quit -sim