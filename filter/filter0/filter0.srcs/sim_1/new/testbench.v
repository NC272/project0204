`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 15:26:20
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
    reg CLK;
    reg [7:0] FIR_IN;
    reg RSTn;
    reg [7:0] mem[1:4096];                                          
    wire [15:0] FIR_OUT;
    reg [12:0] i;
 //����FIR�˲���
    filter0 test(
        .CLK(CLK),
        .FIR_IN(FIR_IN),
        .FIR_OUT(FIR_OUT),
        .RSTn(RSTn)
    );
initial                                               
    begin 
        $readmemh("D:/matlab_chenxu/mem.coe",mem);//�����˲��źŶ���mem
        RSTn= 0;
        CLK= 0;
        #5;
        RSTn= 1;
        #500_000_000;
        $stop;
    end  

always #50_000 CLK = ~CLK;//ʱ�����ɣ�ע���������һ��
 
always@(posedge CLK or negedge RSTn) 
    if(!RSTn)                                
        FIR_IN <= 8'b0 ;
    else
        FIR_IN <= mem[i];     //��������
always@(posedge CLK or negedge RSTn) 
    if(!RSTn)
        i <= 12'd0;
    else
        i <= i + 1'd1;

endmodule
