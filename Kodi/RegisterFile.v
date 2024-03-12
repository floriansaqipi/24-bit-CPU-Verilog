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


module RegisterFile(
input wire[3:0] RS,
input wire[3:0] RT,
input wire[3:0] RD,
input wire[23:0] WriteData,
input wire RegWrite,
input wire Clock,
output wire[23:0] ReadRS,
output wire[23:0] ReadRT
    );
    
reg[23:0] Registers[15:0];

//Reseto te gjithe regjistrat ne 0
integer i;
initial 
begin
for(i=0;i<24;i=i+1)
   Registers[i] <= 24'd0; 
end

//Shkruaj ne regjiter
always @(posedge Clock)
if(RegWrite)begin
begin
Registers[RD] <= WriteData;
end
end

//lexo regjistrat ReadData1, ReadData2
assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];


endmodule
