module buffer_fifo#(parameter
    MEM_SIZE = 64,
    WORD_SIZE = 32
    
)(
    //ports
    input bit clock,
    input bit reset,
    input bit w_enable,
    input bit r_enable,
    input [(WORD_SIZE-1):0] data_in,
    //outport
    output [(WORD_SIZE-1):0] data_out,
    output full,
    output reg empty
);

reg [(($clog2(MEM_SIZE))-1):0]w_addr, r_addr;
wire full_int;
reg empty_int;
reg [(WORD_SIZE-1):0] MEM [0:(MEM_SIZE-1)];
reg [(WORD_SIZE-1):0] data_out_int;

assign data_out = data_out_int;
assign full = full_int;
assign empty = empty_int;

always@(posedge clock or posedge reset) begin 
    if(reset)begin
        w_addr <= 0;
        r_addr <= 0;
        //data_out_int <=0;
    end else begin
        data_out_int <= MEM [r_addr];
        //empty <= empty_int;

        if(w_enable && ~full_int)begin 

            MEM[w_addr]<= data_in;
            if(w_addr == (MEM_SIZE -1)) begin
                w_addr <= 0;
            end else begin 
                w_addr <= w_addr + 1;
            end
        end
        if(r_enable && ~empty_int)begin 
            
            if(r_addr == (MEM_SIZE -1)) begin
                r_addr <= 0;
            end else begin 
                r_addr <= r_addr + 1;
            end
        end
        
    end
end

// always@(*)begin 
//     if(reset) begin
//         full_int <= 0;
//     end
//     else if(r_addr == (w_addr + 1)) begin 
//         full_int <= 1;
//     end else begin
//         full_int <= 0;
//     end
// end

assign full_int = r_addr == (w_addr + 1'b1) ? 1'b1 : 1'b0;

always@(*)begin 
    if(reset) begin
        empty_int <= 1;
    end
    else if(r_addr == (w_addr)) begin 
        empty_int <= 1;
    end else begin
        empty_int <= 0;
    end
end


endmodule;
