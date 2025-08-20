module Gray_encoder (B_g, A_g);
    input [2:0] A_g;
    reg [2:0] gray_T;
    output reg [6:0] B_g;

    always @(*) begin
        case(A_g)
            3'd0 : gray_T = 3'b000;
            3'd1 : gray_T = 3'b001;
            3'd2 : gray_T = 3'b011;
            3'd3 : gray_T = 3'b010;
            3'd4 : gray_T = 3'b110;
            3'd5 : gray_T = 3'b111;
            3'd6 : gray_T = 3'b101;
            3'd7 : gray_T = 3'b100;
            default: gray_T = 3'b000;
        endcase
        B_g = {4'b0 , gray_T};
    end
endmodule