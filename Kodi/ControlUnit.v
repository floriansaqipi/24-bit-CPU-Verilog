`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 20:00:24
// Design Name: 
// Module Name: ControlUnit
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

module CU(
   input [3:0] OPCODE, //HYRJA NGA D_OUT_1
   input [3:0] Funct,
    output reg RegDst, //DALJET E CU, CU_OUT_x
    output reg Branch,
    output reg MemRead,
    output reg MemToReg,
    output reg[1:0] AluOp,
    output reg MemWrite,
    output reg AluSrc,
    output reg RegWrite,
    output reg MulRegWrite
    );
    
    
always @ (OPCODE or Funct)
begin
case(OPCODE)
4'b0110: //PER R-FORMAT
    case(Funct)
    4'b0101: //PER MUL
    begin
        RegDst = 1'bX;
        AluSrc = 0;
        MemToReg = 0;
        RegWrite = 1'bX;
        MemRead = 0;
        MemWrite = 0;
        Branch = 0;
        AluOp[1] = 1;
        AluOp[0] = 1;
        MulRegWrite = 1;
    end

   default:
    begin //Per tjeret R-format
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 0;
    MulRegWrite = 1'bX;
    end
    endcase

4'b0010: //PER LS
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 1;
    RegWrite = 1;
    MemRead = 1;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 0;
    AluOp[0] = 0;
    MulRegWrite = 1'bX;
    end 
    
4'b0011: //PER SS
    begin
    RegDst = 1'bX;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1'bX;
    MemRead = 0;
    MemWrite = 1;
    Branch = 0;
    AluOp[1] = 0;
    AluOp[0] = 0;
    MulRegWrite = 1'bX;
    end 
    
4'b0100: //PER BEQ
    begin
    RegDst = 0;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 0;
    Branch = 1;
    AluOp[1] = 0;
    AluOp[0] = 1;
    MulRegWrite = 1'bX;
    end 
4'b0001: //PER ADDI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 0;
    AluOp[0] = 0;
    MulRegWrite = 1'bX;
    end 
endcase

end

endmodule

