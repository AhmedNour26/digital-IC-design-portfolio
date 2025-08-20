module RAM_singlePort_synch (dout, parity_out, din, addr, clk, rst, wr_en, rd_en, blk_select, addr_en, dout_en);
    parameter MEM_WIDTH = 16; 
    parameter MEM_DEPTH = 1024; 
    parameter ADDR_SIZE = 10; 
    parameter ADDR_PIPELINE = "FALSE"; 
    parameter DOUT_PIPELINE = "TRUE"; 
    parameter PARITY_ENABLE = 1; 

    input clk, rst, wr_en, rd_en, blk_select, addr_en, dout_en;

    input [MEM_WIDTH-1:0] din;

    input [ADDR_SIZE-1:0] addr;
    reg [ADDR_SIZE-1:0] addr_pipe;
    wire [ADDR_SIZE-1:0] addr_mux;
    
    output [MEM_WIDTH-1:0] dout;
    reg [MEM_WIDTH-1:0] dout_RAM;
    reg [MEM_WIDTH-1:0] dout_pipe;

    output parity_out;

    reg [MEM_WIDTH-1:0] mem [MEM_DEPTH-1:0];

    assign parity_out = (PARITY_ENABLE == 1)? (^dout) : 0;
    assign addr_mux = (ADDR_PIPELINE == "TRUE")? addr_pipe : addr;
    assign dout = (DOUT_PIPELINE == "TRUE")? dout_pipe : dout_RAM;

    always @(posedge clk) begin
        if(rst)begin
            addr_pipe <= 0;
            dout_pipe <= 0;
            dout_RAM <= 0;
        end
        else begin
            if (addr_en) begin
                addr_pipe <= addr;
            end
            if (dout_en) begin
                dout_pipe <= dout_RAM;
            end
            if(blk_select)begin
                if (wr_en) begin
                    mem[addr_mux] <= din;
                end
                if (rd_en) begin
                    dout_RAM <= mem[addr_mux];
                end
            end 
        end
    end

endmodule