module behavioral_counter_tb ();
    reg clk_tb , set_tb;
    wire [3:0] out_tb;
    wire [3:0] out_GR;

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~ clk_tb;
        end 
    end

    behavioral_counter DUT (out_tb, clk_tb, set_tb);

    ripple_counter_4bit golden_ref (out_GR, clk_tb, set_tb);

    initial begin
        set_tb = 0;
        #2;
        @(negedge clk_tb);
        if (out_tb != out_GR) begin
            $display("error at out DUT: %d , out golden ratio: %d", out_tb, out_GR);
        end

        set_tb = 1;
        repeat(17)begin
            @(negedge clk_tb);
            if (out_tb != out_GR) begin
                $display("error at out DUT: %d , out golden ratio: %d", out_tb, out_GR);
            end
        end
        $display("test done");
        $finish;
    end

endmodule