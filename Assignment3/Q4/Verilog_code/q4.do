vlib work
vlog q4_1.v q4_2.v q4_2_tb.v
vsim -voptargs=+acc work.ripple_counter_4bit_tb
add wave *
run -all
#quit -sim