module top_test#(parameter
    WORD_SIZE = 32,
    WORD_PART = 8,
    MEM_SIZE = 64,
    CLQ_FREQ = 200_000_000,
    BAUD_RATE = 115200
)(
    input bit clock,
    input bit reset,
    input bit sig_in,      // sinal de entrada do uart
    output bit sig_out    // sinal de saida do uart
);

//============== "echo" states ===================
typedef enum integer { 
    IDLE = 0,
    RECEIVING = 1,
    SWAPPING = 2,
    SWAPPING_2 = 3,
    WAIT_MEM_1 = 4,
    WAIT_MEM_2 = 5,
    SENDING = 6
 } states;
states EA;
//============== "echo" states ===================

//============== uart signals ===================
logic full_in, empty_in, full_out, empty_out;
logic read_req, write_req;
//============== uart signals ===================



//============== swap buff signals ===============
logic w_swap, r_swap, full_swap, empty_swap;
logic [31:0] data_in_swap, data_out_swap;
//===============swap buff signals================

always@(posedge clock or posedge reset) begin
    if(reset) begin
        EA <= IDLE;
        w_swap <= 1'b0;
        r_swap <= 1'b0;
        read_req <= 1'b0;
        write_req <= 1'b0;
    end else begin
        case(EA)
            IDLE: begin
                if(empty_in == 1'b1) begin
                    EA <= RECEIVING;
                end else if(full_out == 1'b1) begin
                    EA <= SENDING;
                end else begin
                    EA <= IDLE;
                end
            end
            RECEIVING: begin
                if(full_in == 1'b1) begin
                    EA <= WAIT_MEM_1;
                    w_swap <= 1'b1;
                end else begin
                    EA <= RECEIVING;
                end
            end
            SWAPPING: begin
                
                if((empty_in == 1'b1) || (full_swap == 1'b1) )begin
                    EA <= WAIT_MEM_2;
                    w_swap <= 1'b0;
                    r_swap <= 1'b1;
                    read_req <= 1'b0;
                end else begin
                    EA <= SWAPPING;
                end
            end
            SWAPPING_2: begin
                if((empty_swap == 1'b1) || (full_out == 1'b1)) begin
                    EA <= SENDING;
                    write_req <= 1'b0;
                end else begin
                    EA <= SWAPPING_2;
                end
            end
            SENDING: begin
                if(empty_out == 1'b1) begin
                    EA <= RECEIVING;
                    r_swap <= 1'b0;
                end else begin
                    EA <= SENDING;
                end
            end
            WAIT_MEM_1: begin
                EA <= SWAPPING;
                read_req <= 1'b1;
            end
            WAIT_MEM_2: begin
                EA <= SWAPPING_2;
                write_req <= 1'b1;
            end
        endcase
    end
end

buffer_fifo #(MEM_SIZE, WORD_SIZE) swap_buff(.clock(clock),          .reset(reset),
                           .w_enable(w_swap),       .r_enable(r_swap),
                           .data_in(data_in_swap),     .data_out(data_out_swap),
                           .full(full_swap),          .empty(empty_swap));

uart_comm#(WORD_SIZE, WORD_PART, MEM_SIZE, CLQ_FREQ, BAUD_RATE) uart_comm(
    .clock(clock),
    .reset(reset),
    .r_buff_in(read_req),
    .w_buff_out(write_req),
    .sig_in(sig_in),
    .sig_out(sig_out),
    .data_from_uart(data_in_swap),
    .data_from_system(data_out_swap),
    .full_in(full_in),
    .empty_in(empty_in),
    .full_out(full_out),
    .empty_out(empty_out)
);
endmodule