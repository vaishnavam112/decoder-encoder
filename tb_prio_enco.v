`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 13:17:26
// Design Name: 
// Module Name: tb_prio_enco
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


module tb_prio_enco( );
reg en;
reg [7:0]a_in;
wire [2:0]y_op;

integer i;

prio_enco inst1(.a_in(a_in),.y_op(y_op),.en(en));
    
    
    initial
    begin
       en=1;
       #10
       for( i=0; i<=2**8; i=i+1)begin
           a_in=$random;
           #10;        
       end
        $finish;
    end
    
    initial
    begin
    $monitor("Time=%0t realtime=%0t a_in=%0b y_op=%0b en=%0b ",$time,$realtime, a_in, y_op, en);
    
    
     
    $display(" a_in = %d ; y_op = %d;",a_in,y_op);
    
    
    
    end
    
    
endmodule





