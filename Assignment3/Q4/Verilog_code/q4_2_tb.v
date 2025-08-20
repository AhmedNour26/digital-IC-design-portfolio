module ripple_counter_4bit_tb();
    reg clk_tb, rstn_tb;
    wire [3:0] out_tb;

    ripple_counter_4bit count0(out_tb, clk_tb, rstn_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #5 clk_tb = ~clk_tb;
        end
    end

    initial begin
        rstn_tb = 0;
        
        #15 rstn_tb = 1;

        repeat(32)begin
          #10;
        end
        
        $finish;
    end

    
endmodule