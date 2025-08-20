module Nbit_parameterized_Full_Half_adder_tb ();
    parameter WIDTH_tb = 4;
    parameter PIPELINE_ENABLE_tb = 1;
    parameter USE_FULL_ADDER_tb = 1;

    reg [WIDTH_tb - 1:0] a_tb, b_tb;
    reg clk_tb, rst_tb, cin_tb;

    wire [WIDTH_tb - 1:0] sum_tb;
    wire cout_tb;

    reg [WIDTH_tb - 1:0] sum_exp;
    reg cout_exp;

    Nbit_parameterized_Full_Half_adder 
    #(.WIDTH(WIDTH_tb), .PIPELINE_ENABLE(PIPELINE_ENABLE_tb), .USE_FULL_ADDER(USE_FULL_ADDER_tb)) 
    DUT (sum_tb, cout_tb, a_tb, b_tb, clk_tb, rst_tb, cin_tb);

    initial begin
        clk_tb=0;
        forever begin
           #1 clk_tb=~clk_tb;
        end
    end

    initial begin
        rst_tb = 1;
        repeat(10)begin
            a_tb= $random; b_tb= $random; cin_tb=$random;
            {cout_exp, sum_exp} =0;
            @(negedge clk_tb);
            if(sum_exp != sum_tb || cout_exp != cout_tb)begin
                 $display("reset error: a=%d b=%d cin=%d output: sum=%d cout=%d  Expected: sum=%d cout=%d",
                            a_tb, b_tb, cin_tb, sum_tb, cout_tb, sum_exp, cout_exp);
            end
        end

        rst_tb = 0;
        repeat(50)begin
            
            a_tb= $random; b_tb= $random; cin_tb =$random;
            {cout_exp, sum_exp} = a_tb + b_tb + cin_tb;
            @(negedge clk_tb);
            if(sum_exp != sum_tb || cout_exp != cout_tb)begin
                 $display("function error: a=%d b=%d cin=%d output: sum=%d cout=%d  Expected: sum=%d cout=%d",
                            a_tb, b_tb, cin_tb, sum_tb, cout_tb, sum_exp, cout_exp);
            end
        end
        $display("test complete");
        $finish;
    end


endmodule