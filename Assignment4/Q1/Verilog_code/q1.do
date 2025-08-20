vlib work
vlog q1.v q1_tb.v
vsim -voptargs=+acc work.ALSU_tb
add wave *
run -all
#quit -sim