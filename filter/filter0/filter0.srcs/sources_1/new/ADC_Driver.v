`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 19:13:21
// Design Name: 
// Module Name: ADC_Driver
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


module ADC_Driver(
    input clk_100MHz,
    input [7:0]ADC_Data,
    input Rst,
    output clk_ADC,
    output ADC_EN,
    output [7:0]ADC_Data_out
    );
endmodule
