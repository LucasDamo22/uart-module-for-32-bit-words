module uart_comm#(parameter
    WORD_SIZE = 32,
    WORD_PART = 8,
    MEM_SIZE = 64,
    CLQ_FREQ = 200_000_000,
    BAUD_RATE = 115200
)(
    input bit clock,
    input bit reset,
    input bit r_buff_in, // sinal de leitura do buffer de entrada
    input bit w_buff_out, // sinal de escrita do buffer de saida
    input bit sig_in,      // sinal de entrada do uart
    output bit sig_out,    // sinal de saida do uart
    output [WORD_SIZE-1:0] data_from_uart, // dado que entrou pela uart para o sistema
    input [WORD_SIZE-1: 0] data_from_system, // dado que saiu do sistema para a uart
    output bit full_in,    //sinal de buffer de entrada cheio
    output bit empty_in,    //sinal de buffer de entrada vazio
    output bit full_out,    //sinal de buffer de saida cheio
    output bit empty_out    //sinal de buffer de saida vazio
);



cycle_uart_in #(WORD_SIZE, WORD_PART, MEM_SIZE, CLQ_FREQ, BAUD_RATE)   
            cycle_uart_in(.clock(clock),         .reset(reset), 
                          .read_req(r_buff_in),     .sig(sig_in),
                          .data_out(data_from_uart),      .full(full_in),
                          .empty(empty_in));

cycle_uart_out #(WORD_SIZE, WORD_PART, MEM_SIZE, CLQ_FREQ, BAUD_RATE)   
            cycle_uart_out(.clock(clock),         .reset(reset), 
                          .data_in(data_from_system),       .valid_in(w_buff_out),
                          .sig(sig_out),            .full(full_out),
                          .empty(empty_out));

endmodule