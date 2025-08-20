module Onehot_encoder_tb_exhaustive();
    parameter USE_GRAY_tb = 0;
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
            3'd0 : B_tb = 7'b000_0000;
            3'd1 : B_tb = 7'b000_0001;
            3'd2 : B_tb = 7'b000_0010;
            3'd3 : B_tb = 7'b000_0100;
            3'd4 : B_tb = 7'b000_1000;
            3'd5 : B_tb = 7'b001_0000;
            3'd6 : B_tb = 7'b010_0000;
            3'd7 : B_tb = 7'b100_0000;
            endcase
            #10;
            $display("Value of golden model = %b , Value of DUT = %b", B_tb, B_dut);
        end
    end 

endmodule