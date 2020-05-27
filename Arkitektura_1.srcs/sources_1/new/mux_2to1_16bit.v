`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 09:07:37 PM
// Design Name: 
// Module Name: mux_2to1_16bit
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


module mux_2to1_16bit(s, d0, d1, z);

input s;
input wire[15:0] d0, d1;
output wire[15:0] z;

assign z = s ? d1 : d0;
endmodule
