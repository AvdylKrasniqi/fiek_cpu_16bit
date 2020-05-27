`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 04:02:46 PM
// Design Name: 
// Module Name: alu_control
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

module alu_control( input ALUop, input [4:0] instructions, output reg bnegate, output reg [2:0] bits );
    always @(ALUop or instructions)
if(ALUop == 0)
            begin
                bnegate = 0;
                bits = 3'b101;
            end
    else
        begin
            case(instructions)
            //SLL
            5'b01000:
            begin 
                bnegate = 0;
                bits = 3'b001;
            end
            //SRL
            5'b01001:
            begin 
                bnegate = 0;
                bits = 3'b110;
            end
            //AND
            5'b00001:
            begin 
                bnegate = 0;
                bits = 3'b000;
            end
            //OR
            5'b00010:
            begin 
                bnegate = 0;
                bits = 3'b010;
            end
            //XOR
            5'b00011:
            begin 
                bnegate = 0;
                bits = 3'b011;
            end
            //ADD
            5'b00100:
            begin 
                bnegate = 0;
                bits = 3'b100;
            end
            //SUB
            5'b00111:
            begin 
                bnegate = 1;
                bits = 3'b100;
            end
            //MUL
            5'b10000:
            begin 
                bnegate = 0;
                bits = 3'b111;
            end
       endcase
    end
endmodule