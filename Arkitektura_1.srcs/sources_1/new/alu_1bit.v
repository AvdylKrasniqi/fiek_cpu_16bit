`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 01:52:15 PM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(
    input a,
    input b,
    input cin,
    input bnegate,
    input [2:0] muxselector,
    output result,
    output cout,
    input nextbit,
    input previousbit
    );
    
wire a, b, cin, bnegate;
wire[2:0] muxselector;

wire result;
wire cout;

wire net2, net3, net4, net5, bjo, net6, net7, net8;

not b1 (bjo, b);

mux_2to1 m2_B(bnegate, b, bjo, net2);

and n3 (net3, a, net2);
or n4 (net4, a, net2);
xor n6 (net6, a, net2);


full_adder FA (a, net2, cin, net5, cout);

assign net8 = previousbit;
assign net7 = nextbit;
assign net9 = -1; //qetu duhet me ndreq mul-in dhe halilin.
//define inputs and output
//output z1;
//input s0,s1,s2, d0, d1, d2, d3, d4, d5, d6, d7;
////////////////biti 3,            biti2,        biti1       ,AND,  SLL,  OR,  XOR,   ADD, ADDI,  SRL ,  mul,  rezultati
mux_8to1 m8 (muxselector[2], muxselector[1], muxselector[0], net3, net7, net4, net6, net5, net5, net8, net9, result);


endmodule
