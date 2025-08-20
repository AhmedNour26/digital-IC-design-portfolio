module Gray_encoder_tb_exhaustive();
    parameter USE_GRAY_tb = 1;
    reg [2:0] A_tb;
    reg [2:0] gray_tb;
    reg [6:0] B_tb;
    wire [6:0] B_dut;

    Gray_onehot_encoder #(USE_GRAY_tb) DUT (B_dut, A_tb);

    integer i;
    initial begin
        for (i=0; i<8; i=i+1) begin
            A_tb = i;
            case(A_tb) 
            3'd0 : gray_tb = 3'b000;
            3'd1 : gray_tb = 3'b001;
            3'd2 : gray_tb = 3'b011;
            3'd3 : gray_tb = 3'b010;
            3'd4 : gray_tb = 3'b110;
            3'd5 : gray_tb = 3'b111;
            3'd6 : gray_tb = 3'b101;
            3'd7 : gray_tb = 3'b100;
            endcase
            B_tb = {4'b0 , gray_tb};
            #10;
            $display("Value of golden model = %b , Value of DUT = %b", B_tb, B_dut);
        end
    end 

endmodule