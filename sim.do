vlib work
vmap work work

vlog -work work -sv ./buff_break_join/uart/if/uart_if.sv
vlog -work work -sv ./buff_break_join/buffer_fifo/buffer_fifo.sv
vlog -work work -sv ./buff_break_join/word_join/word_join.sv
vlog -work work -sv ./buff_break_join/word_break/word_break.sv
vlog -work work -sv ./buff_break_join/uart/uart_rx.sv
vlog -work work -sv ./buff_break_join/uart/uart_tx.sv
vlog -work work -sv ./buff_break_join/uart/uart.sv
vlog -work work -sv ./buff_break_join/cycle_uart_in.sv
vlog -work work -sv ./buff_break_join/cycle_uart_out.sv
vlog -work work -sv ./uart_comm.sv 
vlog -work work -sv ./top_test.sv

vlog -work work -sv ./top_test_tb.sv




vsim -voptargs=+acc work.tb

do wave.do

run 100 ms
