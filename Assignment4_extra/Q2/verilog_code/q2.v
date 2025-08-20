module Nbit_parameterized_Full_Half_adder (sum, cout, a, b, clk, rst, cin);
    parameter WIDTH = 4;
    parameter PIPELINE_ENABLE = 1;
    parameter USE_FULL_ADDER = 1;

    input [WIDTH - 1:0] a, b;
    input clk, rst, cin;

    output reg [WIDTH - 1:0] sum;
    output reg cout;

    always @(*) begin
        if(PIPELINE_ENABLE == 0)begin
            if (rst) begin
                {cout, sum} = 0;
            end
            else begin
                if(USE_FULL_ADDER == 1)begin
                    {cout, sum} = a + b + cin;
                end
                else begin
                    {cout, sum} = a + b;
                end  
            end
        end
    end

    always @(posedge clk) begin
        if (PIPELINE_ENABLE == 1) begin
            if (rst) begin
                {cout, sum} <= 0;
            end
            else begin
                if(USE_FULL_ADDER == 1)begin
                    {cout, sum} <= a + b+ cin;                
                end
                else begin
                    {cout, sum} <= a + b;
                end
            end
        end
    end


endmodule