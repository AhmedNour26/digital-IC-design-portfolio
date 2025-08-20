module FIFO_memory_tb ();
    parameter FIFO_WIDTH = 16;
    parameter FIFO_DEPTH = 512;

    reg clk_a, clk_b, rst, wen_a, ren_b;
    reg [FIFO_WIDTH-1:0] din_a;

    wire [FIFO_WIDTH-1:0] dout_b;
    wire full, empty;

    FIFO_memory DUT (dout_b, full, empty, din_a, clk_a, clk_b, rst, wen_a, ren_b);

    initial begin
        clk_a = 0;
        clk_b = 0;
        forever begin
            #1;
            clk_a = ~clk_a;
            clk_b = ~clk_b;
        end
    end

    initial begin
        rst = 1;
        #5;
        rst = 0;

        ren_b = 0;
        wen_a = 1;
        repeat(100)begin
            din_a = $random;
            @(negedge clk_a);    
        end

        wen_a = 0;
        repeat(100)begin
            ren_b = $random;            
        end

        ren_b = 1;
        wen_a = 1;
        repeat(100)begin
            din_a = $random;
            @(negedge clk_a);    
        end
        
        $display("test done");
        $finish;
    end

endmodule