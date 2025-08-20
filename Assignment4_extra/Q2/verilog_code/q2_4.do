vlib work
vlog q2.v q2_tb_4.v
vsim -voptargs=+acc work.Nbit_parameterized_Full_Half_adder_tb4
add wave *
run -all
#quit -sim