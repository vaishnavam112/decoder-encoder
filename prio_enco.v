`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 08:42:39
// Design Name: 
// Module Name: prio_enco
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


module prio_enco(en, a_in, y_op);
input en;
input [7:0] a_in;
output reg[2:0] y_op;

always@(*)
begin
    if(en)
        begin
        casex (a_in)
            8'b00000001: y_op= 3'b000;
            8'b0000001x: y_op= 3'b001;
            8'b000001xx: y_op= 3'b010;
            8'b00001xxx: y_op= 3'b011;
            8'b0001xxxx: y_op= 3'b100;
            8'b001xxxxx: y_op= 3'b101;
            8'b01xxxxxx: y_op= 3'b110;
            8'b1xxxxxxx: y_op= 3'b111;
        endcase
        end
    else
        y_op='hz;
end
endmodule
