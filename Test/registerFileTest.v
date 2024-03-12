module RegisterFileTest();

reg[3:0] RS;
reg[3:0] RT;
reg[3:0] RD;
reg[23:0] WriteData;
reg RegWrite;
reg Clock;
wire[23:0] ReadRS;
wire[23:0] ReadRT;

initial
$monitor("RS=%d, RT=%d, RD=%d, WrDa=%d, Regwr=%d, Cl=%d, ReadRS=%d, ReadRt=%d",RS,RT,RD,WriteData,RegWrite,Clock,ReadRS,ReadRT);

initial
begin
#0 Clock=1'b0;
#5 RD=4'd1; WriteData = 24'd10; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RD=4'd2; WriteData=24'd2; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RD=4'd3; WriteData=24'd16; RegWrite=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0; RS=4'd1; RT=4'd2;
#5 Clock=1'b1; RS=4'd3; RegWrite=1'b0; 
#5 $stop;

end

RegisterFile rf(RS,RT,RD,WriteData,RegWrite,Clock,ReadRS,ReadRT);

endmodule
