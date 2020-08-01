`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 17:15:04
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg clk_100MHz=0;
    reg [1:0]Key=0;
    wire DAC_Out;
    wire DAC_Sync;
    wire [7:0]DAC_Data;
    initial
        begin
            clk_100MHz=1;
            Key=0;
            #2_000_000;
            Key=1;
            #16_000_000;
            Key=2;
            #16_000_000;
            Key=3;
            #50_000_000 $stop;
        end
    wave_generator test(
        .clk_100MHz(clk_100MHz),
        .Key(Key),
        .clk_DAC(),
        .DAC_Din(DAC_Out),
        .DAC_Sync(DAC_Sync),
        .DAC_Data(DAC_Data)
        );
    always #10 clk_100MHz=~clk_100MHz;
    
endmodule
