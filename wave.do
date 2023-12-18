onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group UART_COMM /tb/uart_comm/clock
add wave -noupdate -group UART_COMM /tb/uart_comm/reset
add wave -noupdate -group UART_COMM /tb/uart_comm/r_buff_in
add wave -noupdate -group UART_COMM /tb/uart_comm/w_buff_out
add wave -noupdate -group UART_COMM /tb/uart_comm/sig_in
add wave -noupdate -group UART_COMM /tb/uart_comm/sig_out
add wave -noupdate -group UART_COMM /tb/uart_comm/data_out
add wave -noupdate -group UART_COMM /tb/uart_comm/data_in
add wave -noupdate -group UART_COMM /tb/uart_comm/full_in
add wave -noupdate -group UART_COMM /tb/uart_comm/empty_in
add wave -noupdate -group UART_COMM /tb/uart_comm/full_out
add wave -noupdate -group UART_COMM /tb/uart_comm/empty_out
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/MEM_SIZE
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/clock
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/reset
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/read_req
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/sig
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/data_out
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/full
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/empty
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/word_joined
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/joined_valid
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/full_int
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/empty_int
add wave -noupdate -group SERIAL_IN /tb/uart_comm/cycle_uart_in/credit
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/clock
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/reset
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/data_in
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/valid_in
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/sig
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/full
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/empty
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/word_o
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/buff_o
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/r_enable
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/mini_word_valid
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/buff_empty
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/credit
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/buff_empty_reg
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/delayer_1
add wave -noupdate -group SERIAL_OUT /tb/uart_comm/cycle_uart_out/delayer_2
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/clock
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/reset
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/w_enable
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/r_enable
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/data_in
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/data_out
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/full
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/empty
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/w_addr
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/r_addr
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/full_int
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/empty_int
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/MEM
add wave -noupdate -expand -group buff_o /tb/uart_comm/cycle_uart_out/buff_out/data_out_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15661546085 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 218
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
WaveRestoreZoom {0 ps} {52500 us}
