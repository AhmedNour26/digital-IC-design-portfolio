vlib work
vlog q2.v q2_tb_1.v
vsim -voptargs=+acc work.Nbit_parameterized_Full_Half_adder_tb
add wave *
run -all
#quit -sim