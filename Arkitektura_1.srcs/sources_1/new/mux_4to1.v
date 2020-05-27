`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:00:05 PM
// Design Name: 
// Module Name: mux_4to1
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


//module mux_3to1 (s0, s1, d0, d1, d2, z1);

////define inputs and output
//input s0, s1, d0, d1, d2;
//output z1;
////use the nested conditional operator
//assign z1 = s1 ? d2 : (s0 ? d1 : d0);
//endmodule



module mux_8to1(s2,s1,s0, d0, d1, d2, d3, d4, d5, d6, d7, z1);
input s2,s1,s0, d0, d1, d2, d3, d4, d5, d6, d7;
output z1;

//assign z1 = s1 ? (s0 ? d3 :d2) : (s0 ? d1 : d0);

assign z1 = s2 ? (s1 ? (s0 ? d7 : d6) : (s0 ? d5 : d4)) : (s1 ? (s0 ? d3 : d2) : (s0 ? d1 : d0));

endmodule
