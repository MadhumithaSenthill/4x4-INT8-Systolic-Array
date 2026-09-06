`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2026 10:03:08
// Design Name: 
// Module Name: pe
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


module pe(
  input clk,
  input reset,
  input enable,
  input[7:0]A,
  input[7:0]B,
  output reg[15:0]C
    );
  always@(posedge clk)
  begin
  if(reset)
     C<=16'b0;
  else if(enable)
     C<=C+(A*B);
  else
     C<=C;      
  end     
endmodule
