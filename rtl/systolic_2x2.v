`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2026 10:23:42
// Design Name: 
// Module Name: systolic_2x2
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


module systolic_2x2(
  input clk,
  input reset,
  input enable,
  input [7:0]A11,
  input [7:0]A12,
  input [7:0]A21,
  input [7:0]A22,
  input [7:0]B11,
  input [7:0]B12,
  input [7:0]B21,
  input [7:0]B22,
  
  output[15:0]C11,
  output[15:0]C12,
  output[15:0]C21,
  output[15:0]C22
    );
pe pe1(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A11),
.B(B11),
.C(C11)
);   

pe pe2(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A12),
.B(B12),
.C(C12)
);   

pe pe3(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A21),
.B(B21),
.C(C21)
);   

pe pe4(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A22),
.B(B22),
.C(C22)
);   
endmodule


  
