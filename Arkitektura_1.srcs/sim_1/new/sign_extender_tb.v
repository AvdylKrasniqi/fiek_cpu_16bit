`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:25:10 PM
// Design Name: 
// Module Name: sign_extender_tb
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


module sign_extender_tb(

    );
//module sign_extender(
//        input[7:0] hyrja,
//        output[15:0] dalja
//    );
    reg[7:0] hyrja;
    wire[15:0] dalja;
    
initial $monitor("Hyrja=%d, Dalja=%d", hyrja, dalja);

initial
begin
#0 hyrja=8'd4;
#10 $stop;
end 

sign_extender se(hyrja, dalja);

endmodule
