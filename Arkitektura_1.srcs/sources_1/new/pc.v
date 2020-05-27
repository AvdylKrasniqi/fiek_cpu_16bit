`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 11:37:16 PM
// Design Name: 
// Module Name: pc
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


module pc(input clk, input hyrja, output dalja);
wire [15:0] hyrja;
reg [15:0] dalja;

always @ (posedge clk)
begin
if(hyrja[0] === 1'bx)
    begin
        dalja = 16'd10;
    end
else
    begin
        dalja = hyrja;
    end
end


endmodule
