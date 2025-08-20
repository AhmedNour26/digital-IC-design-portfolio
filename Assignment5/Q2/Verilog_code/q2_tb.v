module counter_tb ();
    
    reg rst_tb, clk_tb;
    wire [1:0] y_tb;
    wire [1:0] gray_out_tb;

    counter DUT (y_tb, rst_tb, clk_tb);
    gray_counter golden (gray_out_tb, clk_tb, rst_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~clk_tb;
        end
    end

    initial begin
        rst_tb = 1;
        #5;
        rst_tb=0;
        repeat(20)begin
            @(negedge clk_tb);
        end

        $display("test done");
        $finish;
    end

endmodule