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

typedef enum integer { 
    wait_not_empty = 0,
    buff_n_empty = 1,
    read_buff = 2,
    send_breaker = 3,
    breaking = 4,
    sending_uart = 5,
    wait_uart_data = 6

 } states;
 states EA;

wire buff_empty;
wire [WORD_PART-1:0] word_o;
reg [WORD_SIZE-1:0] buff_o, buff_o_int;
reg request_part;
reg r_buff_int;
reg break_valid; 
reg last_part;
wire [1:0]credit;
assign empty = buff_empty;
assign sig = tx.sig;
assign tx.data = word_o;
// assign tx.valid =;
                    //((credit == 0) && (delayer_3)) ?'b1 :
                    //'b0;
//assign tx.valid = nothing;
//assign tx.valid = 1;



always@(posedge clock or posedge reset) begin
    if(reset) begin
        EA <= wait_not_empty;
        request_part <= 0;
        r_buff_int <= 0;
        break_valid <= 0; 
        tx.valid <= 0;
        last_part <= 0;
    end else begin
        case(EA)
        wait_not_empty: begin
            request_part <= 0;
            if(~buff_empty)begin 
                EA <= buff_n_empty;
            end else begin
                EA <= wait_not_empty;
            end
        end
        buff_n_empty: begin
            r_buff_int <= 1;
            EA <= read_buff;
        end
        read_buff: begin
            buff_o_int <= buff_o;
            r_buff_int <= 0;
            EA <= send_breaker;
        end
        send_breaker: begin
            EA <= breaking;
            break_valid <= 1;
        end
        breaking: begin
            break_valid <= 0;
            if(last_part) begin
                EA <= wait_not_empty;
                last_part <= 0;
                request_part <= 1;
            end else if(credit != 2'b0) begin
                tx.valid <= 1;
                EA <= wait_uart_data;
                request_part <= 1;
            end else if (credit == 0) begin
                tx.valid <= 1;
                last_part <= 1;
                EA <=wait_uart_data;
            end
        end
        wait_uart_data: begin
            request_part <= 0;
            EA <= sending_uart;
        end
        sending_uart: begin
            tx.valid <= 0;
            if(tx.ready /*&& ~last_part*/) begin
                EA <=breaking;
            // end else if (last_part) begin
            //     EA <= wait_not_empty;
            //     last_part <= 0;
            end else begin
                EA <= sending_uart;
            end
        end
        endcase
    end
end



//entra palavra de 32 bits, sai palavra de 8 bits
word_break  #(WORD_SIZE, WORD_PART)   word_break(.clock(clock),         .reset(reset), 
                          .data_in(buff_o_int),     .request(request_part),
                         .in_valid(break_valid),      .word_out(word_o),
                       .credit_out(credit),     .valid_o(valid_part_out));
//armazena 64 palavras de 32 bits
buffer_fifo #(MEM_SIZE, WORD_SIZE) buff_out(.clock(clock),          .reset(reset),
                        .w_enable(valid_in),       .r_enable(r_buff_int),
                         .data_in(data_in),     .data_out(buff_o),
                            .full(full),           .empty(buff_empty));
uart_if #(WORD_PART)tx();


uart_tx #(WORD_PART, BAUD_RATE, CLQ_FREQ ) uart_tx_inst (
    
    .txif       (tx),
    .clk        (clock),
    .rstn       (~reset)
);

//edge_detector ede(.clock(clock), .reset(reset), .din(tx.ready && tx.valid), .rising(request_part));

endmodule

