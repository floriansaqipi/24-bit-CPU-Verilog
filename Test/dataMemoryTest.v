
module dataMemoryTest();

reg[23:0] Address;
reg[23:0] WriteData;
reg MemWrite;
reg MemRead;
reg Clock;
wire[23:0] ReadData;

initial
$monitor("Addr=%b, WrtDa=%b, memwr=%b, memRe=%b, cl=%b, readdata=%b",Address,WriteData,MemWrite,MemRead,Clock,ReadData);

initial
begin
#0 Clock = 1'b0;
#5 MemWrite = 1'b1; Address = 24'd16; WriteData = 24'd2;
#5 Clock = 1'b1;
#5 Clock = 1'b0; MemWrite = 1'b0; MemRead = 1'b1; Address = 24'b0000_0000_0000_0000_0000_1010;
#5 MemRead= 1'b1; MemRead = 1'b0;
#5 Clock=1'b0;
#5 $stop;   

end

DataMemory dm(Address,WriteData,MemWrite,MemRead,Clock,ReadData);

endmodule

