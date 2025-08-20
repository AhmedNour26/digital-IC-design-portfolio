vlib work
vlog q2.v q2_GM_DFF.v q2_DFF_tb.v
vsim -voptargs=+acc work.D_TFF_D_tb
add wave *
run -all
#quit -sim