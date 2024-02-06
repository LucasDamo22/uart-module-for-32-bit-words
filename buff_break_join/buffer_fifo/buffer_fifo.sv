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



wire [(WORD_SIZE-1):0] data_out_int;
assign full = full_int;
assign empty = empty_int;
assign data_out = data_out_int;

always@(posedge clock or posedge reset) begin 
    if(reset)begin
        w_addr <= 0;
        r_addr <= 0;
    end else begin
        
        if(w_enable && ~full_int)begin 
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


ram#(MEM_SIZE, WORD_SIZE) ram_inst (.clock(clock),          .reset(reset), 
                                    .w_enable(w_enable),     
                                    .w_addr(w_addr),        .r_addr(r_addr), 
                                    .data_in(data_in),      .data_out(data_out_int));


endmodule;
