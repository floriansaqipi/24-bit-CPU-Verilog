//Hyrje ne CPU - CLock CPU_IN_1
module CPU(input Clock);

//TELAT E BRENDSHEM TE CPU, SHIH CPU.PDF
wire [3:0] opcode; //D_OUT_1
wire [3:0] Funct; //D_OUT_1
//CU_OUT_x
wire RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc, MulRegWrite;
wire [1:0] ALUOp;

//inicializimi i Datapath    
Datapath DP
(
Clock,
RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc, MulRegWrite,
ALUOp,
opcode,
Funct
);

//Inicializimi i Control Unit
CU ControlUnit(opcode, Funct,
RegDst,
Branch, 
MemRead, 
MemToReg,
ALUOp,
MemWrite, 
ALUSrc,
RegWrite,
MulRegWrite
);

endmodule
