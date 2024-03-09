`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 09:41:30
// Design Name: 
// Module Name: tb_decoder_3x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_decoder_3x8( );
    reg [2:0]data_in;
    wire [7:0]y_out;
    integer i;
    reg en;
    decoder_3x8 inst1(.data_in(data_in),.y_out(y_out), .en(en));
    
    
    initial
    begin
        en=1;
        #10;
            for( i=0; i<=8; i=i+1)
                data_in=$random;
                #10;

    $finish;
    end
    
    initial
    begin
    $monitor("Time=%0t data_in=%0b y_out=%0b en=%0b ",$time, data_in, y_out, en);
    
    
    end
    
    
endmodule
