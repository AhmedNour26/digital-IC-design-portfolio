vlib work
vlog q4.v q4_tb.v
vsim -voptargs=+acc work.gray_counter_tb
add wave *
run -all
#quit -sim