module out_with_parity (a, d);

input  [7:0] a;
output [8:0] d;

assign d = {(^a) , a};

endmodule
