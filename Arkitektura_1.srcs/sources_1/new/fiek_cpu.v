`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 06:33:32 PM
// Design Name: 
// Module Name: fiek_cpu
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

module fiek_cpu(input clk, 
                output output_programcounter_dalja, 
                output output_mux_memtoreg_result,
                 output output_rg_readdata1, 
                 output input_alu16bit_b, 
                 output output_alu16_result,  
                 output output_dm_readdata, 
                 output output_ac_bits,
                 output output_ac_bnegate,
                 output regjistri0, 
                 output regjistri1, 
                 output regjistri2, 
                 output regjistri3, 
                 output regjistri4, 
                 output regjistri5, 
                 output regjistri6, 
                 output regjistri7);
wire clk;
   
//wire[15:0] ReadAddress;
wire[15:0] output_instruction_dalja;


wire[15:0] input_programcounter_hyrja;
wire[15:0] output_programcounter_dalja;

pc programcounter(clk, input_programcounter_hyrja, output_programcounter_dalja);

wire coutQeNukNaVynSen;
alu_16bit alu_pc(output_programcounter_dalja,       //input a,
                 16'b1,                             //input b,
                 1'b0,                              //input bnegate,
                 3'b100,                            //input muxselector,
                 input_programcounter_hyrja,        //output result,
                 coutQeNukNaVynSen                  //output cout
            );

//module InstrMemory(input clk, input Hyrja, output Dalja);
InstrMemory im(clk,  output_programcounter_dalja, output_instruction_dalja);


wire output_cu_regdst,
     output_cu_alusrc,
     output_cu_memtoreg, 
     output_cu_regwrite,
     output_cu_memread,
     output_cu_memwrite,
     output_cu_aluop;
     
cu control_unit(output_instruction_dalja[15:14],    // input [1:0] opcode
                output_cu_regdst,                   // output reg RegDst
                output_cu_alusrc,                   // output reg ALUSrc
                output_cu_memtoreg,                 // output reg MemToReg
                output_cu_regwrite,                 // output reg RegWrite
                output_cu_memread,                  // output reg MemRead
                output_cu_memwrite,                 // output reg MemWrite
                output_cu_aluop                     // output reg ALUOp
                );                                  


wire [2:0] input_rg_writeregister;
wire [15:0] output_rg_readdata1;
wire [15:0] output_rg_readdata2;
     
     
mux_2to1_3bit m2_writereg(output_cu_regdst,             // s
                     output_instruction_dalja[10:8],    // d0
                     output_instruction_dalja[7:5],     // d1
                     input_rg_writeregister            // output result
                     );

wire [15:0] output_mux_memtoreg_result;

wire[15:0] regjistri0;
wire[15:0] regjistri1;
wire[15:0] regjistri2;
wire[15:0] regjistri3;
wire[15:0] regjistri4;
wire[15:0] regjistri5;
wire[15:0] regjistri6;
wire[15:0] regjistri7;

//register_file(input RS, input RT, input RD, input WD, input we, input clk, output RD1, output RD2);
register_file rg(output_instruction_dalja[13:11],   //RS
                output_instruction_dalja[10:8],     //RT
                input_rg_writeregister,             //RD
                output_mux_memtoreg_result,         //WD
                output_cu_regwrite,                 //WE
                clk,                                //clk
                output_rg_readdata1,                //RD1
                output_rg_readdata2,                 //RD2
                regjistri0,
                regjistri1,
                regjistri2,
                regjistri3,
                regjistri4,
                regjistri5,
                regjistri6,
                regjistri7
                );



wire [15:0] output_se_dalja;
sign_extender se(output_instruction_dalja[7:0], //input[7:0] hyrja,
                 output_se_dalja                //output[15:0] dalja
                 );

wire[15:0] input_alu16bit_b;

mux_2to1_16bit m2_RorIFormat(output_cu_alusrc,                // s
                     output_rg_readdata2,               // d0
                     output_se_dalja,                   // d1
                     input_alu16bit_b                   // output result
                     );


wire output_ac_bnegate;
wire [2:0] output_ac_bits;                  
alu_control ac(output_cu_aluop,             //input ALUop
               output_instruction_dalja[4:0],    //input [5:0] instructions
               output_ac_bnegate,           //output reg bnegate
               output_ac_bits[2:0]               //output reg [2:0] bits
               );
               
               
               
wire [15:0] output_alu16_result;   
wire output_alu16_cout;            
alu_16bit alu_16(output_rg_readdata1,               //input a,
                 input_alu16bit_b,                  //input b,
                 output_ac_bnegate,                 //input bnegate,
                 output_ac_bits,                    //input muxselector,
                 output_alu16_result,               //output result,
                 output_alu16_cout                  //output cout
            );               
 
//module DataMemory(input AdresaNeHyrje, input WriteData, input MemWrite, input MemRead, input clk, output ReadData);
wire [15:0] output_dm_readdata;
DataMemory dm(output_alu16_result, //input AdresaNeHyrje
              output_rg_readdata2, //input WriteData
              output_cu_memwrite,  //input MemWrite
              output_cu_memread,   //input MemRead
              clk,                 //input clk
              output_dm_readdata   //output ReadData
          );



mux_2to1_16bit mux_memtoreg(output_cu_memtoreg, 
                      output_alu16_result, 
                      output_dm_readdata, 
                      output_mux_memtoreg_result
                  );
                  
endmodule
