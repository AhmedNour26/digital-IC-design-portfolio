module Nbit_ALU (in0, in1, opcode, out);
parameter N1 = 4;

input [N1 -1 :0] in0, in1;
input [1:0] opcode;

output reg [N1 -1 :0] out;

always @(*) begin
    case (opcode)
        2'b00: out = in0 + in1;
        2'b01: out = in0 | in1;
        2'b10: out = in0 - in1;
        2'b11: out = in0 ^ in1;
    endcase
end
endmodule
