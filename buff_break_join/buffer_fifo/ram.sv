module ram#(parameter
    MEM_SIZE = 64,
    WORD_SIZE = 32
)(
    //ports
    input bit clock,
    input bit reset,
    input bit w_enable,
    input [(($clog2(MEM_SIZE))-1):0]w_addr, r_addr,
    input [(WORD_SIZE-1):0] data_in,
    //outport
    output [(WORD_SIZE-1):0] data_out

);
(* ram_style = "block" *) reg [(WORD_SIZE-1):0] MEM [0:(MEM_SIZE-1)];
reg [(WORD_SIZE-1):0] data_out_int;
assign data_out = data_out_int;

always@(posedge clock) begin 
    if(reset)begin
       
    end else begin
    
    data_out_int <= MEM[r_addr];
    
    if(w_enable)begin 
        MEM[w_addr]<= data_in;
    end
    
    end
end

endmodule