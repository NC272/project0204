`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 23:32:22
// Design Name: 
// Module Name: DAC_Driver
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


module DAC_Driver(
    input clk_100MHz,
    input clk_DAC,
    input DAC_En,
    input [15:0]DAC_Data_in,
    output reg DAC_Din,
    output reg DAC_Sync
    );
    //DAC cycle state machine count
    reg [4:0] DAC_Cnt = 5'd0;
     //DAC state machine task execution
    always@(posedge clk_DAC)
        begin
            if(DAC_Cnt == 18)
                DAC_Cnt <= 5'd0;
            else
                DAC_Cnt <= DAC_Cnt + 5'd1;
            case(DAC_Cnt)
                5'd0: DAC_Din <= 1'b0;
                5'd1: DAC_Din <= DAC_Data_in[15];
                5'd2: DAC_Din <= DAC_Data_in[14];
                5'd3: DAC_Din <= DAC_Data_in[13];
                5'd4: DAC_Din <= DAC_Data_in[12];
                5'd5: DAC_Din <= DAC_Data_in[11];
                5'd6: DAC_Din <= DAC_Data_in[10];
                5'd7: DAC_Din <= DAC_Data_in[9];
                5'd8: DAC_Din <= DAC_Data_in[8];
                5'd9: DAC_Din <= DAC_Data_in[7];
                5'd10: DAC_Din <= DAC_Data_in[6];
                5'd11: DAC_Din <= DAC_Data_in[5];
                5'd12: DAC_Din <= DAC_Data_in[4];
                5'd13: DAC_Din <= DAC_Data_in[3];
                5'd14: DAC_Din <= DAC_Data_in[2];
                5'd15: DAC_Din <= DAC_Data_in[1];
                5'd16: DAC_Din <= DAC_Data_in[0];
                5'd17:begin 
                        DAC_Din <= 1'b0;
                        DAC_Sync <= 1'b1;
                       end
                5'd18:begin 
                        DAC_Din <= 1'b0;
                        DAC_Sync <= 1'b0;
                       end
            endcase    
        end
endmodule
