module MulRegTest();

reg[47:0] data;
reg RegWrite;
reg Clock;
wire [47:0] ReadData;

initial
begin
#0 Clock=1'b0;
#5 data = 48'd16; RegWrite=1'b0;
#5 Clock=1'b1;
#5 Clock = 1'b0;
#5 data= 48'd17; RegWrite=1'b1;
#5 Clock = 1'b1;
#5 RegWrite=1'b0; Clock = 1'b0;
#5 $stop;
end

MulReg mr(data,RegWrite,Clock,ReadData);

endmodule
