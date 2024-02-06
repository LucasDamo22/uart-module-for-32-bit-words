onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/cont
add wave -noupdate /tb/serial_data
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/MEM_SIZE
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/WORD_SIZE
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/clock
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/reset
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/w_enable
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/r_enable
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_in
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_out
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/full
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/empty
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/w_addr
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/r_addr
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/full_int
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/empty_int
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/MEM
add wave -noupdate -expand -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_out_int
add wave -noupdate -expand -group txif /tb/top_test_inst/uart_comm/cycle_uart_out/tx/DATA_WIDTH
add wave -noupdate -expand -group txif /tb/top_test_inst/uart_comm/cycle_uart_out/tx/sig
add wave -noupdate -expand -group txif /tb/top_test_inst/uart_comm/cycle_uart_out/tx/data
add wave -noupdate -expand -group txif /tb/top_test_inst/uart_comm/cycle_uart_out/tx/valid
add wave -noupdate -expand -group txif /tb/top_test_inst/uart_comm/cycle_uart_out/tx/ready
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/WORD_IN_SIZE
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/WORD_OUT_SIZE
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/clock
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/reset
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/data_in
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/request
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/in_valid
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/word_out
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/credit_out
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/valid_o
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/data_int
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/credit
add wave -noupdate -group word_break /tb/top_test_inst/uart_comm/cycle_uart_out/word_break/valid
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/EA
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_empty
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/word_o
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_o
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_o_int
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/request_part
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/r_buff_int
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/break_valid
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/last_part
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/credit
add wave -noupdate -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/valid_part_out
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/state
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/data_r
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/sig_r
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/ready_r
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/data_cnt
add wave -noupdate -expand -group tx_inst /tb/top_test_inst/uart_comm/cycle_uart_out/uart_tx_inst/clk_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30130500759 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {29686828450 ps} {32919884996 ps}
