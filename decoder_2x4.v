`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 15:58:45
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
    input [1:0] data_in,
    input en,
    output reg [3:0] y_out
    );
    
    always@(data_in)
        begin
            if(en)begin
            casex(data_in)
                2'd0: y_out= 4'b0001;
                2'd1: y_out= 4'b0010;
                2'd2: y_out= 4'b0100;
                2'd3: y_out= 4'b1000;
                    default: y_out= 4'b0000;
                    
             endcase       
             end else y_out= 4'b0000;       
        end
    
    
endmodule
