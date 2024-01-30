onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/top_test_inst/WORD_SIZE
add wave -noupdate /tb/top_test_inst/WORD_PART
add wave -noupdate /tb/top_test_inst/MEM_SIZE
add wave -noupdate /tb/top_test_inst/CLQ_FREQ
add wave -noupdate /tb/top_test_inst/BAUD_RATE
add wave -noupdate /tb/top_test_inst/clock
add wave -noupdate /tb/top_test_inst/reset
add wave -noupdate /tb/top_test_inst/sig_in
add wave -noupdate /tb/top_test_inst/sig_out
add wave -noupdate /tb/top_test_inst/EA
add wave -noupdate /tb/top_test_inst/full_in
add wave -noupdate /tb/top_test_inst/empty_in
add wave -noupdate /tb/top_test_inst/full_out
add wave -noupdate /tb/top_test_inst/empty_out
add wave -noupdate /tb/top_test_inst/read_req
add wave -noupdate /tb/top_test_inst/write_req
add wave -noupdate /tb/top_test_inst/w_swap
add wave -noupdate /tb/top_test_inst/r_swap
add wave -noupdate /tb/top_test_inst/full_swap
add wave -noupdate /tb/top_test_inst/empty_swap
add wave -noupdate /tb/top_test_inst/data_in_swap
add wave -noupdate /tb/top_test_inst/data_out_swap
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/clock
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/reset
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/w_enable
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/r_enable
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/data_in
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/data_out
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/full
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/empty
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/w_addr
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/r_addr
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/full_int
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/empty_int
add wave -noupdate -group swap_buff /tb/top_test_inst/swap_buff/data_out_int
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/clock
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/reset
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/r_buff_in
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/w_buff_out
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/sig_in
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/sig_out
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/data_from_uart
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/data_from_system
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/full_in
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/empty_in
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/full_out
add wave -noupdate -group uart_comm /tb/top_test_inst/uart_comm/empty_out
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/clock
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/reset
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/data_in
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/valid_in
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/sig
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/full
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/empty
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/word_o
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_o
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/r_enable
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/mini_word_valid
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_empty
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/credit
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_empty_reg
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/delayer_1
add wave -noupdate -expand -group cycle_out /tb/top_test_inst/uart_comm/cycle_uart_out/delayer_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24729545455 ps} 0}
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
WaveRestoreZoom {0 ps} {263655 us}
