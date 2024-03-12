module barrel_shifterTest();

reg [23:0] data;
reg [23:0] shift;
wire [23:0] result;

initial
$monitor("data=%d, shift=%d, res=%d",data,shift,result);

initial
begin
#0 data = 24'd1; shift = 24'd0;
#2 data = 24'd1; shift = 24'd1;
#2 data = 24'd1; shift = 24'd2;
#2 data = 24'd1; shift = 24'd3;
#2 data = 24'd1; shift = 24'd4;
#2 data = 24'd1; shift = 24'd5;
#2 data = 24'd1; shift = 24'd6;
#2 data = 24'd1; shift = 24'd7;
#2 data = 24'd1; shift = 24'd8;
#2 data = 24'd1; shift = 24'd9;
#2 data = 24'd1; shift = 24'd10;
#2 data = 24'd1; shift = 24'd11;
#2 data = 24'd1; shift = 24'd12;
#2 data = 24'd1; shift = 24'd13;
#2 data = 24'd1; shift = 24'd14;
#2 data = 24'd1; shift = 24'd15;
#2 data = 24'd1; shift = 24'd16;
#2 data = 24'd1; shift = 24'd17;
#2 data = 24'd1; shift = 24'd18;
#2 data = 24'd1; shift = 24'd19;
#2 data = 24'd1; shift = 24'd20;
#2 data = 24'd1; shift = 24'd21;
#2 data = 24'd1; shift = 24'd22;
#2 data = 24'd1; shift = 24'd23;
#2 data = 24'd1; shift = 24'd24;
#2 data = 24'd1; shift = 24'd25;
#2 $stop;

end

barrel_shifter br(data,shift,result);

endmodule
