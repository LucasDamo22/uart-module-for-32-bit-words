module cycle_uart_out#(parameter
    WORD_SIZE = 32,
    WORD_PART = 8,
    MEM_SIZE = 64,
    CLQ_FREQ = 200_000_000,
    BAUD_RATE = 115200
)(
    input bit clock,
    input bit reset,
    input [WORD_SIZE-1:0] data_in,
    input bit valid_in,
    output bit sig,
    output bit full,
    output bit empty
);



logic [WORD_PART-1:0] word_o;
logic [WORD_SIZE-1:0] buff_o;
//wire request_part;
reg r_enable;
wire mini_word_valid;
wire buff_empty;
wire [1:0] credit;
reg buff_empty_reg;
reg delayer_1, delayer_2;

assign empty = delayer_2;
assign sig = tx.sig;
assign tx.data = word_o;
assign tx.valid = ~delayer_1; //? 'b1 : 'b0;
//assign tx.valid = nothing;
//assign tx.valid = 1;
always@(posedge clock or posedge reset) begin 
    if(reset) begin
        r_enable <= 0;
        delayer_1 <= 1;
        delayer_2 <= 1;
        buff_empty_reg <= 1;
    end else begin
        buff_empty_reg <= buff_empty;
        delayer_1 <= buff_empty_reg;
        delayer_2 <= delayer_1;
        if(~buff_empty && (credit==0 && mini_word_valid)) begin
            r_enable <= 1;
        end else begin
            r_enable <= 0;
        end
    end
end


//entra palavra de 32 bits, sai palavra de 8 bits
word_break  #(WORD_SIZE, WORD_PART)   word_break(.clock(clock),         .reset(reset), 
                          .data_in(buff_o),     .request((tx.ready) && ~delayer_2),
                         .in_valid(~buff_empty_reg),      .word_out(word_o),
                       .credit_out(credit),     .valid_o(mini_word_valid));
//armazena 64 palavras de 32 bits
buffer_fifo #(MEM_SIZE, WORD_SIZE) buff_out(.clock(clock),          .reset(reset),
                        .w_enable(valid_in),       .r_enable(r_enable),
                         .data_in(data_in),     .data_out(buff_o),
                            .full(full),           .empty(buff_empty));
uart_if #(WORD_PART)tx();
uart_if #(WORD_PART)rx();

uart_tx #(WORD_PART, BAUD_RATE, CLQ_FREQ ) uart_tx_inst (
    
    .txif       (tx),
    .clk        (clock),
    .rstn       (~reset)
);

//edge_detector ede(.clock(clock), .reset(reset), .din(tx.ready && tx.valid), .rising(request_part));

endmodule

