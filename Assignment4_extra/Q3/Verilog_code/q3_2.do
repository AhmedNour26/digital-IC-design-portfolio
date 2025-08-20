vlib work
vlog q3.v q3_tb_2.v
vsim -voptargs=+acc work.shift_register_tb_2
add wave *
run -all
#quit -sim