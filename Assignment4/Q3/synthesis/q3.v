module TDM (out, in0, in1, in2, in3, clk, rst);
    input clk;
    input rst;                 
    input [1:0] in0, in1, in2, in3;
    output reg [1:0] out;
    reg [1:0] S;

    always @(posedge clk or posedge rst) begin
        if (rst)
            S <= 2'b00;     
        else
            S <= S + 1;   
    end

    always @(*) begin
        case (S)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
        endcase
    end

endmodule
