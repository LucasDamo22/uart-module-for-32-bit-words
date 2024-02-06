`timescale 1ns/1ps
module tb;

// clock set for 100MHZ
    bit clock, reset;
    integer i;
    logic sig_rx, sig_tx, sig_rts_rx, sig_cts_tx;
    localparam CLOCK_PERIOD = 5;
    logic read;
    localparam sig_detecttime = 8680;
    reg [63:0] timer;
    reg [7:0]serial_data[7:0];
    initial
    begin
        reset = 1'b1;
        #10
        reset = 1'b0;
    end
logic [3:0] cont;
    initial
    begin
        read = 0;
        timer = 64'd10000000;
        clock = 1'b1;
        serial_data[0] = 'h03;
        serial_data[1] = 'h04;
         serial_data[2] = 'hAA;
         serial_data[3] = 'hFF;
          serial_data[4] = 'hBB;
          serial_data[5] = 'hCC;
          serial_data[6] = 'hDD;
          serial_data[7] = 'hEE; 
        // serial_data[8] = 'd114; 
        // serial_data[9] = 'd108; 
        // serial_data[10] = 'd100;  
        sig_rts_rx = 'b1;
        cont = 0;
        
    end

    always #(CLOCK_PERIOD/2.0) clock = ~clock;

reg [7:0] ctrl;
assign sig_rx = sig_rts_rx;
//assign sig_rx = ;
always begin
    #timer
    read = ~read;
end
always begin
    ctrl <= serial_data[cont];
    #(timer/10);
    sig_rts_rx = 'b1;
    //#(timer/4)
    #(sig_detecttime* 5)
    //start bit
    #(sig_detecttime)
    sig_rts_rx = 'b0;
    //data
    #(sig_detecttime) sig_rts_rx = serial_data[cont][0];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][1];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][2];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][3];                 
    #(sig_detecttime) sig_rts_rx = serial_data[cont][4];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][5];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][6];
    #(sig_detecttime) sig_rts_rx = serial_data[cont][7];
    #(sig_detecttime) sig_rts_rx = 'b1;
    //  sig_rts_rx = 'b1;
    // #(sig_detecttime)
    cont = cont + 'b1;
    
    if(cont == 'd7) begin
        cont = 0;
        #(timer/10);
    end
end
// integer cycles_per_bit = 1900; // Clock cycles per bit for 200MHz clock and 115200 baud rate

// always begin
//     sig_rts_rx = 'b1;
//     #(cycles_per_bit*50) // Wait for 5 bit times
//     sig_rts_rx = 'b0; // Start bit
//     // Transmit each bit, waiting for one bit time in between
//     for (integer i = 0; i < 8; i =  i + 1) begin
//         #(cycles_per_bit)
//         sig_rts_rx = serial_data[cont][i];
//     end
//     #(cycles_per_bit)
//     sig_rts_rx = 'b1; // Stop bit
//     #(cycles_per_bit)
//     cont = cont + 'b1;
    
//     if(cont == 'd4) begin
//         cont = 0;
//         #(cycles_per_bit*100);
//     end
// end

logic [31:0] data_out;
logic [31:0] data_in;
logic full_in, empty_in, full_out, empty_out;
logic write;





always@(posedge clock or reset) begin
    if(reset) begin
        data_in = 32'hAABBCCDD;
    end else
        data_in = data_in + 1;
        if(full_out == 1'b0) begin
            write = 1'b1;
          end else begin
            write = 1'b0;
        end
end
top_test #(32, 8, 4, 200_000_000, 115200) top_test_inst(
    .clock(clock),
    .reset(reset),
    .sig_in(sig_rx),
    .sig_out(sig_tx)
);

endmodule