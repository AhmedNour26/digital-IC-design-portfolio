module counter10_tb ();
    reg clk_tb;
    reg Rst_tb;
    wire Clk_div10_out_tb;

    counter10 DUT (Clk_div10_out_tb, clk_tb, Rst_tb);

    initial begin
        clk_tb = 0;
        forever #5 clk_tb = ~clk_tb;
    end

    initial begin
        Rst_tb = 1;
        #20;
        Rst_tb = 0;
        #1000;
        $stop;
    end
endmodule
