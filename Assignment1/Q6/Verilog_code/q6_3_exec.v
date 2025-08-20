module executor (Ain, Bin, opcode, enable, ALUout, a, b, c, d, e, f, g);
parameter N = 4;

input [N-1 :0] Ain, Bin;
input [1:0] opcode;
input enable;

output [N-1 :0] ALUout;
output a, b, c, d, e, f, g;

Nbit_ALU alu1 (Ain, Bin, opcode, ALUout);
sev_seg_dec sdec1 (ALUout, enable, a, b, c, d, e, f, g);

endmodule