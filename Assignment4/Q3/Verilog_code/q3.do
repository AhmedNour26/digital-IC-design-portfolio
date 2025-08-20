vlib work
vlog q3.v q3_tb.v
vsim -voptargs=+acc work.TDM_tb
add wave *
run -all
#quit -sim