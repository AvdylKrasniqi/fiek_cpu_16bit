`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2020 01:49:36 PM
// Design Name: 
// Module Name: register_file
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


module register_file(input RS, input RT, input RD, input WD, input we, input clk, output RD1, output RD2, output[15:0] regjistri0, output[15:0] regjistri1, output[15:0] regjistri2, output[15:0] regjistri3, output[15:0] regjistri4, output[15:0] regjistri5, output[15:0] regjistri6, output[15:0] regjistri7);

//8 regjistra 16 bitesh
reg[15:0] Registers[7:0];

initial Registers[0] = 16'b0;
//initial Registers[1] = 16'b0;
//initial Registers[2] = 16'b0;
//initial Registers[3] = 16'b0;
//initial Registers[4] = 16'b0;
//initial Registers[5] = 16'b0;
//initial Registers[6] = 16'b0;
//initial Registers[7] = 16'b0;

//hyrja per RS 3 biteshe per percaktim te regjistrit
wire[2:0] RS;
wire[2:0] RT;
wire[2:0] RD;
//Te dhenat per tu shkruar ne RegisterFile
wire[15:0] WD;
//WriteEnable
wire we;
//Clock
wire clk;
//Dy daljet e Register File ReadData1 dhe ReadData2
wire[15:0] RD1;
wire[15:0] RD2;
wire[15:0] regjistri0;
wire[15:0] regjistri1;
wire[15:0] regjistri2;
wire[15:0] regjistri3;
wire[15:0] regjistri4;
wire[15:0] regjistri5;
wire[15:0] regjistri6;
wire[15:0] regjistri7;

always @ (posedge clk)
begin
if(we)
    Registers[RD] = WD;
end

assign regjistri0 = Registers[0];
assign regjistri1 = Registers[1];
assign regjistri2 = Registers[2];
assign regjistri3 = Registers[3];
assign regjistri4 = Registers[4];
assign regjistri5 = Registers[5];
assign regjistri6 = Registers[6];
assign regjistri7 = Registers[7];
assign RD1 = Registers[RS];
assign RD2 = Registers[RT];
endmodule
