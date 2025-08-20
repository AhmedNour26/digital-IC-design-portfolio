module behavioral_counter_div_tb ();
    reg clk_tb , set_tb;
    wire [3:0] out_tb;
    wire div_2_tb, div_4_tb;
    reg div_2_exp, div_4_exp;
    

    behavioral_counter_div DUT (out_tb, div_2_tb, div_4_tb, clk_tb, set_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~ clk_tb;
        end 
    end


    initial begin
        div_2_exp = 0;
        div_4_exp = 0;
        set_tb = 0;
        @(negedge clk_tb);
        set_tb = 1;
        
        repeat(50)begin
            @(negedge clk_tb);
            div_2_exp = ~div_2_exp;
            #2;
            if (div_2_exp != div_2_tb) begin
                $display("error in div 2");
            end
        end

        $display("test done");
        $finish;
    end

    initial begin
        @(negedge clk_tb);
         repeat(50)begin
            @(negedge clk_tb);
            div_4_exp = ~div_4_exp;
            #4;
            if (div_4_exp != div_4_tb) begin
                $display("error in div 4");
            end
        end
    end
    
endmodule