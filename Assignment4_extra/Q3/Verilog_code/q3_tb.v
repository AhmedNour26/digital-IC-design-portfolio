module shift_register_tb();
    parameter SHIFT_DIRECTION_tb = "LEFT";
    parameter SHIFT_AMOUNT_tb = 1;

    reg clk_tb, rst_tb, load_tb;
    reg [7:0] load_value_tb;
    wire [7:0] PO_tb;

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~clk_tb;
        end
    end

    shift_register #(.SHIFT_DIRECTION(SHIFT_DIRECTION_tb), .SHIFT_AMOUNT(SHIFT_AMOUNT_tb)) 
    DUT (PO_tb, load_value_tb, clk_tb, rst_tb, load_tb);

    initial begin
        $monitor("at clk: %d, reset state: %d, load state: %d, load val: %d, output: %d"
                , clk_tb, rst_tb, load_tb, load_value_tb, PO_tb);

        rst_tb = 1;
        load_tb = 0;
        load_value_tb = 0;
        #5;

        rst_tb = 0;
        load_tb = 1;
        repeat(10)begin
            @(negedge clk_tb);
            load_value_tb = $random;
        end

        load_tb = 0;
        repeat(5)begin
            @(negedge clk_tb);
        end

        load_tb = 1;
        repeat(10)begin
            @(negedge clk_tb);
            load_value_tb = $random;
        end

        load_tb = 0;
        repeat(5)begin
            @(negedge clk_tb);
        end

        $finish;
    end
    

endmodule