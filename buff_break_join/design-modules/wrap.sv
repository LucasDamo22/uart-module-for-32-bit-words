module wrap(

    input bit clock_p, clock_n,
    input bit reset,    
    input bit sig_rx,                   // serial input wire
    output bit sig_tx,                  // serial output wire
    output logic [1:0]states_led        // state indicator led

);

IBUFDS CLK_IBUFDS (.I(clock_p), .IB(clock_n), .O(clock));
top_test #(32, 8, 2048, 200_000_000, 115200) top (.clock(clock), .reset(reset),.sig_in(sig_rx), .sig_out(sig_tx));
assign states_led = 2'b11 ? (reset) :
                    2'b00;
endmodule