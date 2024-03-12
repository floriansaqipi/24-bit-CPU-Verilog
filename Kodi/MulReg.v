`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 23:11:30
// Design Name: 
// Module Name: RegisterFile
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


module MulReg(
input wire[47:0] data,
input wire RegWrite,
input wire Clock,
output wire[47:0] ReadData);
    
reg[47:0] mulreg;

//Reseto te gjithe regjistrat ne 0
initial 
begin
   mulreg <= 48'd0; 
end

//Shkruaj ne regjiter
always @(posedge Clock)
if(RegWrite) begin
begin
mulreg <= data;
end
end

//lexo regjistrat ReadData1, ReadData2
assign ReadData = mulreg;



endmodule
