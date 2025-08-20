module muxed (a ,b ,c ,d ,e ,f ,sel, out ,out_bar);

input a ,b ,c ,d ,e ,f ,sel;
output out ,out_bar;

assign out = (sel == 0)? (a & b & c) : (d ~^ e ~^ f);
assign out_bar = ~out ;

endmodule