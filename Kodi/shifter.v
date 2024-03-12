module barrel_shifter (input [23:0] data, input [23:0] shift, output [23:0] result);
    reg [23:0] result;
    always @(*) begin
        case (shift)
            24'd0: result = data;
            24'd1: result = {data[22:0],1'd0};
            24'd2: result = {data[21:0],2'd0};
            24'd3: result = {data[20:0],3'd0};
            24'd4: result = {data[19:0],4'd0};
            24'd5: result = {data[18:0],5'd0};
            24'd6: result = {data[17:0],6'd0};
            24'd7: result = {data[16:0],7'd0};
            24'd8: result = {data[15:0],8'd0};
            24'd9: result = {data[14:0],9'd0};
            24'd10: result = {data[13:0],10'd0};
            24'd11: result = {data[12:0],11'd0};
            24'd12: result = {data[11:0],12'd0};
            24'd13: result = {data[10:0],13'd0};
            24'd14: result = {data[9:0],14'd0};
            24'd15: result = {data[8:0],15'd0};
            24'd16: result = {data[7:0],16'd0};
            24'd17: result = {data[6:0],17'd0};
            24'd18: result = {data[5:0],18'd0};
            24'd19: result = {data[4:0],19'd0};
            24'd20: result = {data[3:0],20'd0};
            24'd21: result = {data[2:0],21'd0};
            24'd22: result = {data[1:0],22'd0};
            24'd23: result = {data[0],23'd0}; 
            default: result = 0;
endcase
end
endmodule
