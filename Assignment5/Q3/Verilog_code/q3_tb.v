module monitor_tb ();

    reg Din, clk, rst;
    wire ERR;

    monitor DUT (ERR, Din, clk, rst);

    initial begin
        clk = 0;
        forever begin
            #1 clk =~clk;
        end
    end

    initial begin
        rst = 1;
        Din = 0;
        #5;
        rst = 0;

        repeat(1000)begin
            Din = $random;
            @(negedge clk);
        end

        $display("test done");
        $finish;
    end
endmodule