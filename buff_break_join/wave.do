onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/WORD_SIZE
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/WORD_PART
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/MEM_SIZE
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/clock
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/reset
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/valid_in
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/sig
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/data_out
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/full
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/empty
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/word_joined
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/joined_valid
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/full_int
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/empty_int
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/credit
add wave -noupdate -group CYCLE_IN /tb/cycle_uart_in_inst/r_enable
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/WORD_IN_SIZE
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/WORD_OUT_SIZE
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/clock
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/reset
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/data_in
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/valid_in
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/word_out
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/credit_out
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/valid_o
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/data_int
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/credit
add wave -noupdate -group WORD_JOIN /tb/cycle_uart_in_inst/word/ready
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/MEM_SIZE
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/WORD_SIZE
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/clock
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/reset
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/w_enable
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/r_enable
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/data_in
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/data_out
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/full
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/empty
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/w_addr
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/r_addr
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/full_int
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/empty_int
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/MEM
add wave -noupdate -group BUFF /tb/cycle_uart_in_inst/buff/data_out_int
add wave -noupdate -expand -group RX_IF /tb/cycle_uart_in_inst/rx/DATA_WIDTH
add wave -noupdate -expand -group RX_IF /tb/cycle_uart_in_inst/rx/sig
add wave -noupdate -expand -group RX_IF /tb/cycle_uart_in_inst/rx/data
add wave -noupdate -expand -group RX_IF /tb/cycle_uart_in_inst/rx/valid
add wave -noupdate -expand -group RX_IF /tb/cycle_uart_in_inst/rx/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999759001 ps} 0}
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
WaveRestoreZoom {4999633820 ps} {5000019273 ps}
