vlib work
vlog q1.v q1_tb.v
vsim -voptargs=+acc work.dff_en_pre_tb
add wave *
run -all
#quit -sim