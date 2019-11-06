`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 08:24:14
// Design Name: 
// Module Name: mem
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

`include"define.v"

module mem(
    input rst,
    input wreg_i,
    input [`RegAddrBus] waddr_i,
    input [`RegBus] wdata_i,

    output reg wreg_o,
    output reg [`RegAddrBus] waddr_o,
    output reg [`RegBus] wdata_o
    );
    always @(*)begin
        if(rst == `RstEna)begin
            wreg_o <= `WriteDisa;
            waddr_o <= `NOPRegAddr;
            wdata_o <= `ZeroWord;
        end
        else begin
            wreg_o <= wreg_i;
            waddr_o <= waddr_i;
            wdata_o <= wdata_i;
        end
    end
endmodule
