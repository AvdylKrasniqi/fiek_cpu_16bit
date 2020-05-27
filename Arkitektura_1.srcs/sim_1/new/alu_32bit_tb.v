`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 06:33:01 PM
// Design Name: 
// Module Name: alu_32bit_tb
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

//module alu_16bit(
//    input a,
//    input b,
//    input cin,
//    input ainvert,
//    input bnegate,
//    input [2:0] muxselector,
//    output result,
//    output cout
//    );
module alu_32bit_tbb(

    );
    
reg[15:0] a, b;
reg bnegate;
reg[2:0] muxselector;
wire[15:0] result;
wire cout;
initial 
$monitor ("a = %d, b = %d, cout = %b, muxselector2= %b, muxselector1 = %b, muxselector0 = %b, bnegate = %b, result=%d", 
a, b, cout, muxselector[2], muxselector[1], muxselector[0],  bnegate,result);


initial
begin

//AND
//#0 a=16'd9; b=16'd1; bnegate=0; muxselector[2]=0; muxselector[1]=0; muxselector[0]=0;

//OR
//#0 a=16'd9; b=16'd1; bnegate=0; muxselector[2]=0; muxselector[1]=1; muxselector[0]=0;

//XOR
//#0 a=16'd9; b=16'd2; bnegate=0; muxselector[2]=0; muxselector[1]=1; muxselector[0]=1;

//ADD
//#0 a=16'd9; b=16'd2; bnegate=0; muxselector[2]=1; muxselector[1]=0; muxselector[0]=0;

//SUB
//#0 a=16'd9; b=16'd2; bnegate=1; muxselector[2]=1; muxselector[1]=0; muxselector[0]=0;

//ADDI
//#0 a=16'd9; b=16'd2; bnegate=0; muxselector[2]=1; muxselector[1]=0; muxselector[0]=1;

//SLL
//#0 a=16'd9; b=16'd0; bnegate=0; muxselector[2]=0; muxselector[1]=0; muxselector[0]=1;

//SLR
//#0 a=16'd9; b=16'd0; bnegate=0; muxselector[2]=1; muxselector[1]=1; muxselector[0]=0;

//MULT
//...

#10 $stop;
end
alu_16bit a16(a, b, bnegate, muxselector, result, cout );
endmodule
