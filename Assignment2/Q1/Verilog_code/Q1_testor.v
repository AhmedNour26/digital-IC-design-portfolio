module Nbit_ALU_tb_randomized_or();
parameter N_width_tb = 4;
parameter OPCODE_tb = 1;

reg [N_width_tb-1:0] in0_tb , in1_tb , out_exp; 
wire [N_width_tb-1:0] out_tb;

Nbit_ALU #(.N_width(N_width_tb), .OPCODE(OPCODE_tb)) DUT (out_tb , in0_tb , in1_tb);

//opcode = 1
integer i;
initial begin
  for(i=0; i<999; i=i+1)begin
    in0_tb= $random;
    in1_tb= $random;
    out_exp= in0_tb | in1_tb; 
    #10;
    if(out_tb != out_exp)begin
        $display("error-ALU in OR");
    end
  end
  $display("No errors found in OR");
end

endmodule