`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/01 08:49:04
// Design Name: 
// Module Name: top
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


module top(
    input clk_100MHz,
    input [7:0]ADC_Data,
    output clk_DAC,
    output DAC_Din,
    output DAC_Sync
    );
    wire clk_100MHz_system;
    wire clk_system;
     //ADC
    wire[17:0]Read_Addr;        //Read signal address
    wire[7:0]ADC_Data_Out;      //Storage signal output
    wire clk_ADC;
    wire ADC_En;
    //Offset
    wire [20:0]Offset;
    clk_wiz_0 clk_10(.clk_out1(clk_system),.clk_out2(clk_100MHz_system),.clk_in1(clk_100MHz));
    
    wire [15:0]DAC_Data_in;
    
    Driver_ADC_0 Driver_ADC_0(
        .clk_100MHz(clk_100MHz_system), //System clock              
        .clk_system(clk_system),        //Clock reading signal
        .Rst(1),                        //Reset signal, low reset
        .ADC_Data(ADC_Data),            //ADC sampling data
        .Read_Addr(Read_Addr),          //Read signal address
        .Trigger_Gate(128),             //Trigger threshold
        .Period(Offset),
        .clk_ADC(clk_ADC),              //ADC clock
        .ADC_En(ADC_En),                //ADC enable signal
        .ADC_Data_Out(ADC_Data_Out)     //Storage signal output
        );
      DAC_Driver DAC_Driver(
      .clk_100MHz(clk_100MHz_system),
      .clk_DAC(clk_DAC),
      .DAC_En(1),
      .DAC_Data_in(DAC_Data_in),
      .DAC_Din(DAC_Din),
      .DAC_Sync(DAC_Sync)
      );  
      filter0 filter0(
      .FIR_IN(ADC_Data_Out),
      .CLK(clk_ADC),
      .RSTn(1),
      .FIR_OUT(DAC_Data_in)
      );
        
endmodule
