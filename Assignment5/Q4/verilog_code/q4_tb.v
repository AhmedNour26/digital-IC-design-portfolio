module RAM_singlePort_synch_tb ();
    parameter MEM_WIDTH = 16; 
    parameter MEM_DEPTH = 1024; 
    parameter ADDR_SIZE = 10; 
    parameter ADDR_PIPELINE = "FALSE"; 
    parameter DOUT_PIPELINE = "TRUE"; 
    parameter PARITY_ENABLE = 1; 

    reg clk, rst, wr_en, rd_en, blk_select, addr_en, dout_en;
    reg [MEM_WIDTH-1:0] din;
    reg [ADDR_SIZE-1:0] addr;

    wire [MEM_WIDTH-1:0] dout;
    wire parity_out;

    RAM_singlePort_synch DUT (dout, parity_out, din, addr, clk, rst, wr_en, rd_en, blk_select, addr_en, dout_en);
    
    initial begin
        clk = 0;
        forever begin
            #1 clk = ~clk;
        end
    end

    initial begin
        $readmemh("mem.dat", DUT.mem);
        rst = 1;
        addr=0; addr_en=0; din=0; rd_en=0; blk_select=0; dout_en=0; 
        #5;
        rst = 0;

        wr_en = 1;
        rd_en = 0;
        repeat(5000)begin
            blk_select = $random;
            addr_en = $random;
            dout_en = $random;

            din = $random;
            addr = $random;
            @(negedge clk);
        end

        wr_en = 0;
        rd_en = 1;
        repeat(5000)begin
            blk_select = $random;
            addr_en = $random;
            dout_en = $random;

            addr = $random;
            @(negedge clk);
        end

        $display("test done");
        $finish;
    end
endmodule