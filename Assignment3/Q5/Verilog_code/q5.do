vlib work
vlog q5.v q5_tb.v
vsim -voptargs=+acc work.Parameterized_Shift_register_tb
add wave *
run -all
#quit -sim