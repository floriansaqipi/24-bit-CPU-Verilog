module InstructionMemoryTest();

reg[23:0] PCAddress;
wire[23:0] Instruction;

initial
$monitor("PcAdrr=%d, instr=%d",PCAddress, Instruction);

initial
begin
#0 PCAddress = 24'd10;
#5 PCAddress = 24'd13;
#5 PCAddress = 24'd16;
#5 PCAddress = 24'd19;
#5 PCAddress = 24'd22;
#5 PCAddress = 24'd25;
#5 PCAddress = 24'd28;
#5 PCAddress = 24'd31;
#5 PCAddress = 24'd34;
#5 PCAddress = 24'd37;
#5 PCAddress = 24'd40;
#5 $stop;
end

InstructionMemory IM(PCAddress,Instruction);

endmodule