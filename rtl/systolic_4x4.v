`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2026 10:24:29
// Design Name: 
// Module Name: systolic_4x4
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


module systolic_4x4(
input clk,
input reset,
input enable,
input[7:0]A11,input[7:0]A12,input[7:0]A13,input[7:0]A14,
input[7:0]A21,input[7:0]A22,input[7:0]A23,input[7:0]A24,
input[7:0]A31,input[7:0]A32,input[7:0]A33,input[7:0]A34,
input[7:0]A41,input[7:0]A42,input[7:0]A43,input[7:0]A44,

input[7:0]B11,input[7:0]B12,input[7:0]B13,input[7:0]B14,
input[7:0]B21,input[7:0]B22,input[7:0]B23,input[7:0]B24,
input[7:0]B31,input[7:0]B32,input[7:0]B33,input[7:0]B34,
input[7:0]B41,input[7:0]B42,input[7:0]B43,input[7:0]B44,

output[15:0]C11,output[15:0]C12,
output[15:0]C13,output[15:0]C14,
output[15:0]C21,output[15:0]C22,
output[15:0]C23,output[15:0]C24,
output[15:0]C31,output[15:0]C32,
output[15:0]C33,output[15:0]C34,
output[15:0]C41,output[15:0]C42,
output[15:0]C43,output[15:0]C44
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
.A(A13),
.B(B13),
.C(C13)
);   

pe pe4(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A14),
.B(B14),
.C(C14)
);   

pe pe5(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A21),
.B(B21),
.C(C21)
);   

pe pe6(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A22),
.B(B22),
.C(C22)
);   

pe pe7(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A23),
.B(B23),
.C(C23)
);   


pe pe8(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A24),
.B(B24),
.C(C24)
);

pe pe9(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A31),
.B(B31),
.C(C31)
);  
 
pe pe10(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A32),
.B(B32),
.C(C32)
);   
  
pe pe11(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A33),
.B(B33),
.C(C33)
);   

pe pe12(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A34),
.B(B34),
.C(C34)
);   

pe pe13(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A41),
.B(B41),
.C(C41)
);   

pe pe14(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A42),
.B(B42),
.C(C42)
);   

pe pe15(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A43),
.B(B43),
.C(C43)
);   

pe pe16(
.clk(clk),
.reset(reset),
.enable(enable),
.A(A44),
.B(B44),
.C(C44)
);   
endmodule
