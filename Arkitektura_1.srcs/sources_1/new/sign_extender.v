`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:17:29 PM
// Design Name: 
// Module Name: sign_extender
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


module sign_extender(
        input[7:0] hyrja,
        output[15:0] dalja
    );
    reg[7:0] azero = 8'b0;
    wire[7:0] hyrja;
    wire[15:0] dalja;
    assign dalja = {azero[7:0], hyrja[7:0]};
    
endmodule
