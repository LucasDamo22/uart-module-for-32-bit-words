onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/MEM_SIZE
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/WORD_SIZE
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/clock
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/reset
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/w_enable
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/r_enable
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_in
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_out
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/full
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/empty
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/w_addr
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/r_addr
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/full_int
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/empty_int
add wave -noupdate -group buff_out /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/data_out_int
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/MEM_SIZE
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/WORD_SIZE
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/clock
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/reset
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/w_enable
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/r_enable
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/w_addr
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/r_addr
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/data_in
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/data_out
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/MEM
add wave -noupdate -group ram /tb/top_test_inst/uart_comm/cycle_uart_out/buff_out/ram_inst/data_out_int
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/tx/DATA_WIDTH
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/tx/sig
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/tx/data
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/tx/valid
add wave -noupdate /tb/top_test_inst/uart_comm/cycle_uart_out/tx/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2253787879 ps} 0}
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
WaveRestoreZoom {0 ps} {26250 us}
