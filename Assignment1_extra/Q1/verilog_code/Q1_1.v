module comp (a ,b);
input [3:0] a; 
output b;

assign b = (a > 4'b0010 && a < 4'b1000) ? 1 : 0; 

endmodule