`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2026 10:44:48
// Design Name: 
// Module Name: controller
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


module controller(
input clk,
input reset,
input start,
output reg enable,
output reg done
);
reg[7:0]counter;
always@(posedge clk)
begin
if(reset)
begin
   counter<=0;
   enable<=0;
   done<=0;
   end
else if(start)
begin
 enable<=1;
   counter<=counter+1;
 if(counter==8)
 begin
  enable<=0;
  done<=1;
  end  
 end
end        
endmodule
