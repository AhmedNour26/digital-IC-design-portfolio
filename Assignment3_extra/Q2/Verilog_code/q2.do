vlib work
vlog q2.v q2_tb.v ripcounter.v DFF.v
vsim -voptargs=+acc work.behavioral_counter_tb
add wave *
run -all
#quit -sim