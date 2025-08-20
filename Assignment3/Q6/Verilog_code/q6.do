vlib work
vlog q6.v q6_tb.v
vsim -voptargs=+acc work.SLE_tb
add wave *
run -all
#quit -sim