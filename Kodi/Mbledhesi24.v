
module Mbledhesi24(
    input [23:0] A,
    input [23:0] B,
    input CIN,
    output [23:0] Shuma,
    output COUT
    );

    wire [22:0] CarryOut;

    Mbledhesi m0(A[0], B[0], 0, Shuma[0], CarryOut[0]);
    Mbledhesi m1(A[1], B[1], CarryOut[0], Shuma[1], CarryOut[1]);
    Mbledhesi m2(A[2], B[2], CarryOut[1], Shuma[2], CarryOut[2]);
    Mbledhesi m3(A[3], B[3], CarryOut[2], Shuma[3], CarryOut[3]);
    Mbledhesi m4(A[4], B[4], CarryOut[3], Shuma[4], CarryOut[4]);
    Mbledhesi m5(A[5], B[5], CarryOut[4], Shuma[5], CarryOut[5]);
    Mbledhesi m6(A[6], B[6], CarryOut[5], Shuma[6], CarryOut[6]);
    Mbledhesi m7(A[7], B[7], CarryOut[6], Shuma[7], CarryOut[7]);
    Mbledhesi m8(A[8], B[8], CarryOut[7], Shuma[8], CarryOut[8]);
    Mbledhesi m9(A[9], B[9], CarryOut[8], Shuma[9], CarryOut[9]);
    Mbledhesi m10(A[10], B[10], CarryOut[9], Shuma[10], CarryOut[10]);
    Mbledhesi m11(A[11], B[11], CarryOut[10], Shuma[11], CarryOut[11]);
    Mbledhesi m12(A[12], B[12], CarryOut[11], Shuma[12], CarryOut[12]);
    Mbledhesi m13(A[13], B[13], CarryOut[12], Shuma[13], CarryOut[13]);
    Mbledhesi m14(A[14], B[14], CarryOut[13], Shuma[14], CarryOut[14]);
    Mbledhesi m15(A[15], B[15], CarryOut[14], Shuma[15], CarryOut[15]);
    Mbledhesi m16(A[16], B[16], CarryOut[15], Shuma[16], CarryOut[16]);
    Mbledhesi m17(A[17], B[17], CarryOut[16], Shuma[17], CarryOut[17]);
    Mbledhesi m18(A[18], B[18], CarryOut[17], Shuma[18], CarryOut[18]);
    Mbledhesi m19(A[19], B[19], CarryOut[18], Shuma[19], CarryOut[19]);
    Mbledhesi m20(A[20], B[20], CarryOut[19], Shuma[20], CarryOut[20]);
    Mbledhesi m21(A[21], B[21], CarryOut[20], Shuma[21], CarryOut[21]);
    Mbledhesi m22(A[22], B[22], CarryOut[21], Shuma[22], CarryOut[22]);
    Mbledhesi m23(A[23], B[23], CarryOut[22], Shuma[23], COUT);
    
    
endmodule
