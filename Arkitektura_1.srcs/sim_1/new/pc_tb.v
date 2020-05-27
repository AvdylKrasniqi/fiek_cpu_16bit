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


module pc_tb(

    );
    reg clk;
    reg[15:0] hyrja;
    wire[15:0] dalja;

initial $monitor("clk=%d, hyrja=%d, dalja=%d", clk, hyrja, dalja);

initial
begin
//#0 clk = 1'b1; readaddress=16'd9; clk = 1'b0;
//#5 clk=1'b1;
//#10 readaddress=16'd10; clk=1'b0;
#0 clk=1'b1;
#5 clk=1'b1;
#5 clk=1'b0;
#5 clk=1'b1;
#5 clk=1'b0;
#10 $stop;
end 

pc program_counter(clk, hyrja, dalja);
endmodule
