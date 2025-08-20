vlib work
vlog q2.v q2_GM_TFF.v q2_TFF_tb.v
vsim -voptargs=+acc work.D_TFF_T_tb
add wave *
run -all
#quit -sim