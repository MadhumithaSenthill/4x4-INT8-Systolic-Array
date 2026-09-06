`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2026 09:41:59
// Design Name: 
// Module Name: tb
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




module tb();

//-------------INPUTS-----------------

reg clk;
reg reset;
reg start;

reg [7:0] A11,A12,A13,A14;
reg [7:0] A21,A22,A23,A24;
reg [7:0] A31,A32,A33,A34;
reg [7:0] A41,A42,A43,A44;

reg [7:0] B11,B12,B13,B14;
reg [7:0] B21,B22,B23,B24;
reg [7:0] B31,B32,B33,B34;
reg [7:0] B41,B42,B43,B44;


//-------------OUTPUTS----------------

wire done;

wire [15:0] C11,C12,C13,C14;
wire [15:0] C21,C22,C23,C24;
wire [15:0] C31,C32,C33,C34;
wire [15:0] C41,C42,C43,C44;


//-----------TOP MODULE---------------

top_module uut(

.clk(clk),
.reset(reset),
.start(start),

.A11(A11),.A12(A12),.A13(A13),.A14(A14),
.A21(A21),.A22(A22),.A23(A23),.A24(A24),
.A31(A31),.A32(A32),.A33(A33),.A34(A34),
.A41(A41),.A42(A42),.A43(A43),.A44(A44),

.B11(B11),.B12(B12),.B13(B13),.B14(B14),
.B21(B21),.B22(B22),.B23(B23),.B24(B24),
.B31(B31),.B32(B32),.B33(B33),.B34(B34),
.B41(B41),.B42(B42),.B43(B43),.B44(B44),

.done(done),

.C11(C11),.C12(C12),.C13(C13),.C14(C14),
.C21(C21),.C22(C22),.C23(C23),.C24(C24),
.C31(C31),.C32(C32),.C33(C33),.C34(C34),
.C41(C41),.C42(C42),.C43(C43),.C44(C44)

);


//------------CLOCK------------------

always #5 clk=~clk;


//----------TEST CASE----------------

initial begin

clk=0;
reset=1;
start=0;


//-----------RESET-------------------

#20;
reset=0;


//-----------MATRIX-A----------------

A11=1; A12=2; A13=3; A14=4;
A21=5; A22=6; A23=7; A24=8;
A31=1; A32=2; A33=3; A34=4;
A41=5; A42=6; A43=7; A44=8;


//-----------MATRIX-B----------------

B11=1; B12=1; B13=1; B14=1;
B21=2; B22=2; B23=2; B24=2;
B31=3; B32=3; B33=3; B34=3;
B41=4; B42=4; B43=4; B44=4;


//--------START COMPUTATION----------

#10;
start=1;

#10;
start=0;


//--------WAIT FOR COMPLETION---------

#100;


//-----------DISPLAY OUTPUT-----------

$display("DONE=%d",done);

$display("C11=%d",C11);
$display("C12=%d",C12);
$display("C13=%d",C13);
$display("C14=%d",C14);

$display("C21=%d",C21);
$display("C22=%d",C22);
$display("C23=%d",C23);
$display("C24=%d",C24);

$display("C31=%d",C31);
$display("C32=%d",C32);
$display("C33=%d",C33);
$display("C34=%d",C34);

$display("C41=%d",C41);
$display("C42=%d",C42);
$display("C43=%d",C43);
$display("C44=%d",C44);


$finish;

end

endmodule

    
