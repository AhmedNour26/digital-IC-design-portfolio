module Onehot_encoder (B_oh, A_oh);
    input [2:0] A_oh;
    output reg [6:0] B_oh;

    always @(*) begin
        B_oh = 0;
        case(A_oh)
        3'd0: B_oh = 7'b000_0000;
        default: B_oh[A_oh - 1] = B_oh[A_oh - 1] | 1;
        endcase
    end
endmodule