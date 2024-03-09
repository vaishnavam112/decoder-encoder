`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 16:15:35
// Design Name: 
// Module Name: tb_decoder_2x4
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


module tb_decoder_2x4( );
    reg [1:0]data_in;
    reg en;
    wire [3:0]y_out;
    integer i;
    reg en;
    decoder_2x4 inst1(.data_in(data_in),.y_out(y_out),.en(en));
    initial
    begin
    en=1;
    #10;
        if(en)begin
            for( i=0; i<=4; i=i+1)
               data_in = $random;
               #10;  
        end 
    $finish;
    end
    
    initial
    begin
    $monitor("Time=%0t data_in=%0b y_out=%0b en=%0b ",$time, data_in, y_out, en);
 
    end
    
    
endmodule
