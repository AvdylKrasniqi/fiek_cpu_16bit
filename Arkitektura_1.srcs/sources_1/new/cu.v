`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:59:29 PM
// Design Name: 
// Module Name: cu
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


module cu(input  [1:0] opcode, output reg RegDst, output reg ALUSrc, output reg MemToReg , output reg RegWrite , output reg MemRead , output reg MemWrite, output reg ALUOp);


always @(opcode)
begin
case(opcode)
2'b00: //R format
begin 
RegDst <= 1;
ALUSrc <= 0; 
MemToReg <= 0; 
RegWrite <= 1; 
MemRead <= 0; 
MemWrite <= 0; 
ALUOp <= 1; 
end

2'b01: //I-FORMAT 
begin 
RegDst <= 0; 
ALUSrc <= 1; 
MemToReg <= 0; 
RegWrite <= 1; 
MemRead <= 0; 
MemWrite <= 0; 
ALUOp <= 0; 
end


2'b10: // LW
begin 
MemRead <= 1; 
RegDst <= 0; 
ALUSrc <= 1; 
MemToReg <= 1; 
RegWrite <= 1; 
MemWrite <= 0;
ALUOp <= 0;
end

2'b11: // SW
begin 
RegDst <= 0; 
ALUSrc <= 1; 
MemToReg <= 0; 
RegWrite <= 0; 
MemRead <= 0; 
MemWrite <= 1; 
ALUOp <= 0;
end

//6'b000100: // BEQ

//begin 
//assign RegDst = 0; 
//assign ALUSrc = 0; 
//assign MemToReg = 0; 
//assign RegWrite = 0; 
//assign MemRead = 0; 
//assign MemWrite = 0; 
//assign Branch = 1; 
//assign ALUOp1 = 0; 
//assign ALUOp2 =1; 
//end
endcase
end

endmodule
