
module ALU1(
    input A,
    input B,
    input CIN,
    input BInvert,
    input Less,
    input shiftRes, //rezultati per shifted bit
    input [2:0] Op,
    output Result,
    output CarryOut
    );
    
   wire JoB, mB, dhe_teli, ose_teli, mb_teli, xor_teli; 

   
   assign JoB = ~B;
   
   
   mux2ne1 muxB(B, JoB, BInvert, mB);
   
   assign dhe_teli = A & mB;
   assign ose_teli = A | mB;
   assign xor_teli = A ^ mB;
   
   Mbledhesi m1(A, mB, CIN, mb_teli, CarryOut);
   
   mux8ne1 MuxiKryesor(dhe_teli, ose_teli, mb_teli, Less, 0 ,xor_teli, shiftRes, 0 ,Op, Result);
    
    
endmodule
