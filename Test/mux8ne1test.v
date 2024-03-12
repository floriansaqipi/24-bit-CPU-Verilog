//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 09.01.2023 14:58:53
//// Design Name: 
//// Module Name: mux8ne1test
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module mux8ne1test();

reg h0,h1,h2,h3,h4,h5,h6,h7;
reg [2:0] cline;
wire muxOut;

initial
$monitor("h0=%d, h1=%d, h2=%d, h3=%d, h4=%d, h5=%d, h6=%d, h7=%d, cline=%b",h0,h1,h2,h3,h4,h5,h6,h7,cline);

initial
begin
#0 h0=1'b1; h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b000 ; 
#10 h0=1'b0; h1=1'b1; h2=1'b0; h3=1'b0; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b001 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b1; h3=1'b0; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b010 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b0; h3=1'b1; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b011 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b1; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b100 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b0; h5=1'b1; h6=1'b0; h7=1'b0; cline=3'b101 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b0; cline=3'b110 ; 
#10 h0=1'b0; h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b0; h5=1'b0; h6=1'b0; h7=1'b1; cline=3'b111 ; 
#10 $stop;
 
end

mux8ne1 mux(
    h0,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    h7,
    cline [2:0],
    muxOut
   );

endmodule
