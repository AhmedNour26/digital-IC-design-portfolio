module decoderin2out4 (a, d);

input  [1:0] a;
output [3:0] d;

assign d = (a == 2'b00) ? (4'b0001) : 
           (a == 2'b01) ? (4'b0010) : 
           (a == 2'b10) ? (4'b0100) : 
           (a == 2'b11) ? (4'b1000) : 
           (4'b0000);

endmodule
