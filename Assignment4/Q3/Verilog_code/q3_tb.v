module TDM_tb ();
    reg clk_tb, rst_tb;
    reg [1:0] in0_tb, in1_tb, in2_tb, in3_tb;
    wire [1:0] out_tb;
    reg [1:0] out_exp;
    integer i;

    TDM DUT (out_tb, in0_tb, in1_tb, in2_tb, in3_tb, clk_tb, rst_tb);

    initial begin
        clk_tb = 0;
        forever #5 clk_tb = ~clk_tb;
    end
    
    initial begin
        rst_tb = 1;
        in0_tb = 2'b11; in1_tb = 2'b10; in2_tb = 2'b01; in3_tb = 2'b00;
        out_exp = in0_tb;
        #1;
        @(posedge clk_tb);
        if (out_tb !== out_exp)
            $display("Reset failed: expected = %b, got = %b", out_exp, out_tb);

        repeat(5)begin
            repeat (4) begin
            rst_tb = 0;
            in0_tb = $random;
            in1_tb = $random;
            in2_tb = $random;
            in3_tb = $random;
            #1;
            @(posedge clk_tb);
            out_exp = in0_tb;
            if (out_tb !== out_exp)
                $display("function error: sel = 0, expected = %b, got = %b", out_exp, out_tb);

            in0_tb = $random;
            in1_tb = $random;
            in2_tb = $random;
            in3_tb = $random;
            #1;
            @(posedge clk_tb);
            out_exp = in1_tb;
            if (out_tb !== out_exp)
                $display("function error: sel = 1, expected = %b, got = %b", out_exp, out_tb);
                
            in0_tb = $random;
            in1_tb = $random;
            in2_tb = $random;
            in3_tb = $random;
            #1;
            @(posedge clk_tb);
            out_exp = in2_tb;
            if (out_tb !== out_exp)
                $display("function error: sel = 2, expected = %b, got = %b", out_exp, out_tb);

            in0_tb = $random;
            in1_tb = $random;
            in2_tb = $random;
            in3_tb = $random;
            #1;
            @(posedge clk_tb);
            out_exp = in3_tb;
            if (out_tb !== out_exp)
                $display("function error: sel = 3, expected = %b, got = %b", out_exp, out_tb);
        end
        end

        $display("Test done");
        $finish;
    end
endmodule
