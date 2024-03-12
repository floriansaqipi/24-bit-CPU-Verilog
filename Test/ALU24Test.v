module ALU24Test();

reg [23:0] A;
reg [23:0] B;
reg BNegate;
reg [2:0] Op;
reg [3:0] shamt;
wire Zero;
wire [23:0] Result;
wire Overflow;
wire CarryOut;

initial
begin
#0  A=24'd2; B=24'd10; BNegate=1'b0; Op = 3'b110; shamt = 4'b0010;    
#10 A=24'd10; B=24'd8; BNegate=1'b1; Op = 3'b010; shamt = 4'b0000;    
#10 A=24'd10; B=24'd7; BNegate=1'b1; Op = 3'b010; shamt = 4'b0000;  
#10 A=24'd10; B=24'd10; BNegate=1'b1; Op = 3'b010; shamt = 4'b0000;  
#10 A=24'd12; B=24'd10; BNegate=1'b1; Op = 3'b010; shamt = 4'b0000;  
#10 A=24'd5; B=24'd10; BNegate=1'b0; Op = 3'b010; shamt = 4'b0000;  
 
#10 $stop;  

end

ALU24 al(A,B,BNegate,Op,shamt,Zero,Result,Overflow,CarryOut);



endmodule
