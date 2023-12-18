module word_break#(parameter
    
    WORD_IN_SIZE = 32,
    WORD_OUT_SIZE = 8
)(
    //ports
    input bit clock,
    input bit reset,
    input [WORD_IN_SIZE-1:0] data_in,
    input bit request,
    input bit in_valid,
    output [WORD_OUT_SIZE-1:0] word_out,
    output [1:0] credit_out,
    output bit valid_o
    
);

reg [WORD_IN_SIZE-1:0] data_int;

reg [1:0] credit;
reg valid;


assign credit_out = credit;
assign valid_o = valid;
always@(posedge clock or posedge reset) begin 
    if(reset) begin
        credit <= 3;
    end else begin
        if(in_valid && credit == 3) begin
            data_int <= data_in;
        end
        if(request) begin
            credit <= credit - 1;
            valid <= 1;
        end else begin
            valid <= 0;
        end
        
    end
end


assign word_out = credit == 2'd0 ? data_int[7:0] :
                  credit == 2'd1 ? data_int[15:8] :
                  credit == 2'd2 ? data_int[23:16] :
                                   data_int[31:24];


endmodule