module Nbit_ALU(out , in0 , in1);
parameter N_width = 4;
parameter OPCODE = 0;
input [N_width-1:0] in0 , in1; 
output [N_width-1:0] out;

assign out = (OPCODE == 0)? in0+in1 : (OPCODE == 1)? in0|in1 : (OPCODE == 2)? in0-in1 : in0^in1;

endmodule