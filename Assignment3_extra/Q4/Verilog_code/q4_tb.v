module gray_counter_tb ();
    reg clk_tb, rst_tb;
    wire [1:0] gray_out_tb;

    gray_counter DUT (gray_out_tb, clk_tb, rst_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~clk_tb;
        end
    end

    initial begin
        rst_tb = 1;
        #3;
        rst_tb = 0;
        repeat(10)begin
            @(negedge clk_tb);
        end
        #5;
        rst_tb = 1;
        repeat(10)begin
            @(negedge clk_tb);
        end
        #5;
        rst_tb = 0;
        repeat(50)begin
            @(negedge clk_tb);
        end
        
        $finish;
    end


endmodule