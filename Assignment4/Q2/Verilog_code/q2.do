vlib work
vlog q2.v q2_tb.v
vsim -voptargs=+acc work.DSP48A1_simplified_tb
add wave *
run -all
#quit -sim