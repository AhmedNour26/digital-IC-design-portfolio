module FIFO_memory (dout_b, full, empty, din_a, clk_a, clk_b, rst, wen_a, ren_b);
    parameter FIFO_WIDTH = 16;
    parameter FIFO_DEPTH = 512;

    input clk_a, clk_b, rst, wen_a, ren_b;
    input [FIFO_WIDTH-1:0] din_a;

    output reg [FIFO_WIDTH-1:0] dout_b;
    output full, empty;

    reg [FIFO_WIDTH-1:0] mem [FIFO_DEPTH-1:0];
    reg [$clog2(FIFO_DEPTH):0] Wptr, Rptr;

    assign full = (Wptr[$clog2(FIFO_DEPTH)] != Rptr[$clog2(FIFO_DEPTH)] && (Wptr[$clog2(FIFO_DEPTH)-1:0] == Rptr[$clog2(FIFO_DEPTH)-1:0]))? 1: 0;

    assign empty = (Wptr == Rptr)? 1 : 0;

    always @(posedge clk_a) begin
        if (rst) begin
            Wptr <= 0;
        end
        else begin
            if(wen_a && !full)begin
                mem[Wptr[$clog2(FIFO_DEPTH)-1:0]] <= din_a;
                Wptr <= Wptr + 1;
            end
        end
    end

    always @(posedge clk_b) begin
        if (rst) begin
            Rptr <= 0;
        end
        else begin
            if (ren_b && !empty) begin
                dout_b <= mem[Rptr[$clog2(FIFO_DEPTH)-1:0]];
                Rptr <= Rptr + 1;
            end
        end
    end


endmodule