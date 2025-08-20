module Gray_onehot_encoder (B, A);
    parameter USE_GRAY =1;

    input [2:0] A;
    output [6:0] B;

    generate
        if (USE_GRAY == 1) begin
            Gray_encoder G_encoder1 (B, A);
            //this encoder get the 3-bit code and place it in the 3 least bits in B, as B is 7 bits in the specs.
        end 
        else begin
            Onehot_encoder Oh_encoder2 (B, A);
        end
    endgenerate

endmodule