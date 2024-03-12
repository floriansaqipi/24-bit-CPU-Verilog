module mul (
   input [23:0] a, b,
   output [47:0] result
);
   reg [47:0] t;
   integer i;

   always @(*) begin
      t = 0;
      for (i = 0; i <= 23; i = i + 1) begin
         if (b[i] == 1'b1)
         begin
            t = t + (a << i);
         end
      end
   end
   assign result = t;
endmodule

