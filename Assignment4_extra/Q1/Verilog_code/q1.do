vlib work
vlog q1.v q1_tb.v
vsim -voptargs=+acc work.LFSR_tb
add wave *
run -all
#quit -sim