module Nbit_ALU(out, clk, rst, outalu , in0 , in1);
parameter N_width = 4;
parameter OPCODE = 1;

input [N_width-1:0] in0 , in1;
input clk , rst;
output [N_width-1:0] outalu;
output reg [N_width-1:0] out;

assign outalu = (OPCODE == 0)? in0+in1 : (OPCODE == 1)? in0|in1 : (OPCODE == 2)? in0-in1 : in0^in1;

always @(posedge clk)begin
    if (rst) 
        out <= 0;
    else 
        out <= outalu; 
end
endmodule