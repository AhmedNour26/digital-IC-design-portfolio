module ALU1b (a, b, Ainvert, Binvert, CarryIn, Operation, Result, CarryOut);
input  a, b, Ainvert, Binvert, CarryIn; 
input  [1:0] Operation; 
output Result, CarryOut;
wire at , bt;
assign at = (Ainvert)? ~a : a; 
assign bt = (Binvert)? ~b : b; 
assign {CarryOut, Result} = (Operation == 0)? (at & bt) : (Operation == 1)? (at | bt) : (at + bt + CarryIn);

endmodule