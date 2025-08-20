vlib work
vlog q5.v q5_tb.v
vsim -voptargs=+acc work.FIFO_memory_tb
add wave -position insertpoint \
    sim:/FIFO_memory_tb/DUT/mem
add wave *
run -all
#quit -sim