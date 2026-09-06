`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2026 09:37:43
// Design Name: 
// Module Name: top_module
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

module top_module(

input clk,
input reset,
input start,

input [7:0]A11,A12,A13,A14,
input [7:0]A21,A22,A23,A24,
input [7:0]A31,A32,A33,A34,
input [7:0]A41,A42,A43,A44,

input [7:0]B11,B12,B13,B14,
input [7:0]B21,B22,B23,B24,
input [7:0]B31,B32,B33,B34,
input [7:0]B41,B42,B43,B44,

output done,

output [15:0]C11,C12,C13,C14,
output [15:0]C21,C22,C23,C24,
output [15:0]C31,C32,C33,C34,
output [15:0]C41,C42,C43,C44

);

wire enable;


controller C1(

.clk(clk),
.reset(reset),
.start(start),
.enable(enable),
.done(done)

);


systolic_4x4 S1(

.clk(clk),
.reset(reset),
.enable(enable),

.A11(A11),
.A12(A12),
.A13(A13),
.A14(A14),
.A21(A21),
.A22(A22),
.A23(A23),
.A24(A24),
.A31(A31),
.A32(A32),
.A33(A33),
.A34(A34),
.A41(A41),
.A42(A42),
.A43(A43),
.A44(A44),


.B11(B11),
.B12(B12),
.B13(B13),
.B14(B14),
.B21(B21),
.B22(B22),
.B23(B23),
.B24(B24),
.B31(B31),
.B32(B32),
.B33(B33),
.B34(B34),
.B41(B41),
.B42(B42),
.B43(B43),
.B44(B44),

.C11(C11),
.C12(C12),
.C13(C13),
.C14(C14),
.C21(C21),
.C22(C22),
.C23(C23),
.C24(C24),
.C31(C31),
.C32(C32),
.C33(C33),
.C34(C34),
.C41(C41),
.C42(C42),
.C43(C43),
.C44(C44)

);

endmodule

   
