module word_join#(parameter
    WORD_IN_SIZE = 8,
    WORD_OUT_SIZE = 32
)(
    //ports
    input clock,
    input reset,
    input [WORD_IN_SIZE-1:0] data_in,
    input valid_in,
    output [WORD_OUT_SIZE-1:0] word_out,
    output [1:0] credit_out,
    output valid_o
    
);

reg [WORD_OUT_SIZE-1:0] data_int;

reg [1:0] credit;
reg ready;

assign word_out = data_int;
assign credit_out = credit;
assign valid_o = ready;
always@(posedge clock or posedge reset) begin 
    if(reset) begin
        credit <= 3;
    end else begin
        case(credit)
        0:begin 
            if(valid_in)begin
                data_int[7:0] <= data_in;
                credit <= credit - 1;
                ready <= 1;
            end
        end
        1:begin 
            if(valid_in)begin
                data_int[15:8] <= data_in;
                credit <= credit - 1;
            end
        end
        2:begin 
            if(valid_in)begin
                data_int[23:16] <= data_in;
                credit <= credit - 1;
            end
        end
        3:begin 
            if(valid_in)begin
                data_int[31:24] <= data_in;
                credit <= credit - 1;
            end
            ready <= 0;
        end
        endcase
    end
end

endmodule