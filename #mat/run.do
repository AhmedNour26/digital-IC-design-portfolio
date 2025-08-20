vlib work
vlog q1.v q1_tb.v
vsim -voptargs=+acc work.control_unit_tb
add wave *
run -all
#quit -sim