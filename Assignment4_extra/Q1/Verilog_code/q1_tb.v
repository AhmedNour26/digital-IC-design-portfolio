module LFSR_tb ();
    reg clk_tb, rst_tb, set_tb;
    wire [3:0] out_tb;
    reg [3:0] out_exp;
    integer i;

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~clk_tb;
        end
    end

    LFSR DUT (out_tb, clk_tb, rst_tb, set_tb);

    initial begin
        rst_tb = 1;
        set_tb = 1;
        out_exp = 1;
        #2;
        rst_tb = 0;
        set_tb = 0;
        
        for (i = 0; i < 16; i = i + 1) begin 
            
            case (i)
                0:  out_exp = 4'b0001;
                1:  out_exp = 4'b0010;
                2:  out_exp = 4'b0100;
                3:  out_exp = 4'b1000;
                4:  out_exp = 4'b0011;
                5:  out_exp = 4'b0110;
                6:  out_exp = 4'b1100;
                7:  out_exp = 4'b1011;
                8:  out_exp = 4'b0101;
                9:  out_exp = 4'b1010;
                10: out_exp = 4'b0111;
                11: out_exp = 4'b1110;
                12: out_exp = 4'b1111;
                13: out_exp = 4'b1101;
                14: out_exp = 4'b1001;
                15: out_exp = 4'b0001;
            endcase

            @(negedge clk_tb);
            if(out_exp != out_tb)begin
                $display("error in index: %d , out exp: %d found out: %d", i, out_exp, out_tb);
            end

        end
        $display("test complete");
        $finish;
    end

endmodule