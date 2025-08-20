module comp (a ,b);
input [2:0] a; 
output b;

assign b = ~|a; 

endmodule