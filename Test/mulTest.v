module mulTest();

reg [23:0] x;
reg [23:0] y;
wire [47:0] result;

initial
begin
#0 x=24'd6; y=24'd7;
#10 x=24'd9; y=24'd7;
#10 x=24'd4; y=24'd8;
#10 x=24'b0000_1000_0000_0000_0000_0000; y=24'b0000_1000_0000_0000_0000_0000;
#10 $stop;
end

mul m(x,y,result);


endmodule