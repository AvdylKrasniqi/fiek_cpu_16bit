`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 08:07:29 PM
// Design Name: 
// Module Name: fiek_cpu_tb
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


module fiek_cpu_tb(

    );
    reg clk;
wire[15:0] readaddress;
wire[15:0] writedata;
wire[15:0] teli;
wire[15:0] regjistri0;
wire[15:0] regjistri1;
wire[15:0] regjistri2;
wire[15:0] regjistri3;
wire[15:0] regjistri4;
wire[15:0] regjistri5;
wire[15:0] regjistri6;
wire[15:0] regjistri7;
wire[15:0] input_alu16bit_b;
wire[15:0] output_alu16_result;
wire[15:0] output_dm_readdata;
wire[2:0] mux_selector;
wire bnegate;
initial $monitor("clk=%d, adresa=%d, writedata=%d, teli=%d,  output input_alu16bit_b=%d, output_alu16_result=%d, output_dm_readdata=%d; mux_selector=%d; bnegate=%d; regjistri0=%d, regjistri1=%d, regjistri2=%d, regjistri3=%d, regjistri4=%d, regjistri5=%d, regjistri6=%d, regjistri7=%d", clk, readaddress, writedata, teli, input_alu16bit_b, output_alu16_result, output_dm_readdata, mux_selector, bnegate, regjistri0, regjistri1, regjistri2, regjistri3, regjistri4, regjistri5, regjistri6, regjistri7);

initial
begin
//#0 clk = 1'b1; readaddress=16'd9; clk = 1'b0;
//#5 clk=1'b1;
//#10 readaddress=16'd10; clk=1'b0;
#0  clk=1'b1;  clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 clk=1'b0;
#10 clk=1'b1;
#10 $stop;
end 

fiek_cpu fc(clk, readaddress, writedata, teli, input_alu16bit_b, output_alu16_result, output_dm_readdata, mux_selector, bnegate, regjistri0, regjistri1, regjistri2, regjistri3, regjistri4, regjistri5, regjistri6, regjistri7);
endmodule
