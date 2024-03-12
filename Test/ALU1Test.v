
module ALU1Test();

reg A;
reg B;
reg CIN;
reg BInvert;
reg Less;
reg shiftRes;
reg [2:0] Op;
wire Result;
wire CarryOut;

initial
$monitor("A=%b, B=%b, CIN=%b, BInvert=%b, Less=%b, ShiftRes=%b, Op=%b, Result=%b, CarryOut=%b",A, B, CIN, BInvert, Less, shiftRes, Op, Result, CarryOut);

initial
begin
// AND
#0 A = 1'b0; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b000;
#10 A = 1'b0; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b000;
#10 A = 1'b1; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b000;
#10 A = 1'b1; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b000;
//OR
#10 A = 1'b0; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b001;
#10 A = 1'b0; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b001;
#10 A = 1'b1; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b001;
#10 A = 1'b1; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b001;
//ADD
#10 A = 1'b0; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b0; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b1; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b1; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
//SUB
#10 A = 1'b0; B=1'b0; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b0; B=1'b1; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b1; B=1'b0; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
#10 A = 1'b1; B=1'b1; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b010;
//SLT
#10 A = 1'b0; B=1'b0; CIN = 1'b1; BInvert = 1'b1; Less=1'b1; shiftRes = 1'b0; Op=3'b011;
#10 A = 1'b0; B=1'b1; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b011;
#10 A = 1'b1; B=1'b0; CIN = 1'b1; BInvert = 1'b1; Less=1'b1; shiftRes = 1'b0; Op=3'b011;
#10 A = 1'b1; B=1'b1; CIN = 1'b1; BInvert = 1'b1; Less=1'b0; shiftRes = 1'b0; Op=3'b011;
//XOR
#10 A = 1'b0; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b101;
#10 A = 1'b0; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b101;
#10 A = 1'b1; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b101;
#10 A = 1'b1; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b101;
//SLL
#10 A = 1'b0; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b110;
#10 A = 1'b0; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b1; Op=3'b110;
#10 A = 1'b1; B=1'b0; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b0; Op=3'b110;
#10 A = 1'b1; B=1'b1; CIN = 1'b0; BInvert = 1'b0; Less=1'b0; shiftRes = 1'b1; Op=3'b110;
#10 $stop;

end

ALU1 ALU1Test(A,B,CIN,BInvert,Less,shiftRes,Op,Result,CarryOut);

endmodule
