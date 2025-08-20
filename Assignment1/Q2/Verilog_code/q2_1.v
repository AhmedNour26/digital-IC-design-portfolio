module muxed2 (d, a, b, c, sel, out ,out_bar);

input [2:0] d;
input a, b, c, sel;
output reg out , out_bar;

always @(*) begin 
casex (sel)
1'b0 : out = d[2] | (d[1] & d[0]);
1'b1 : out = a ~^ (b ~^ c);
endcase
out_bar = ~out;
end

endmodule