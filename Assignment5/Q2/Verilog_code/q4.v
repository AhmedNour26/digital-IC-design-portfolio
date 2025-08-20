module gray_counter (gray_out, clk, rst);
    input clk, rst;
    output [1:0] gray_out;

    reg [1:0] counter;

    assign gray_out[1] = counter[1];
    assign gray_out[0] = ^counter;

    always @(posedge clk or posedge rst)begin
        if (rst) 
            counter <= 0;
        else 
            counter <= counter + 1;
    end

endmodule