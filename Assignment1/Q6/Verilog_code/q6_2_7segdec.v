module sev_seg_dec (in0, enable, a, b, c, d, e, f, g);
parameter N2 = 4; 
input [N2 -1 :0] in0;
input enable;
output reg a, b, c, d, e, f, g;

wire in1;
always @(*) begin
if (enable) begin
    case (in0)
        4'h0: {a,b,c,d,e,f,g} = 7'b1111110;
        4'h1: {a,b,c,d,e,f,g} = 7'b0110000;
        4'h2: {a,b,c,d,e,f,g} = 7'b1101101;
        4'h3: {a,b,c,d,e,f,g} = 7'b1111001;
        4'h4: {a,b,c,d,e,f,g} = 7'b0110011;
        4'h5: {a,b,c,d,e,f,g} = 7'b1011011;
        4'h6: {a,b,c,d,e,f,g} = 7'b1011111;
        4'h7: {a,b,c,d,e,f,g} = 7'b1110000;
        4'h8: {a,b,c,d,e,f,g} = 7'b1111111;
        4'h9: {a,b,c,d,e,f,g} = 7'b1111011;
        4'hA: {a,b,c,d,e,f,g} = 7'b1110111;
        4'hB: {a,b,c,d,e,f,g} = 7'b0011111;
        4'hC: {a,b,c,d,e,f,g} = 7'b1001110;
        4'hD: {a,b,c,d,e,f,g} = 7'b0111101;
        4'hE: {a,b,c,d,e,f,g} = 7'b1001111;
        4'hF: {a,b,c,d,e,f,g} = 7'b1000111;
        default: {a,b,c,d,e,f,g} = 7'b0000000;
    endcase
end else begin {a,b,c,d,e,f,g} = 7'b0000000; end
end 
endmodule