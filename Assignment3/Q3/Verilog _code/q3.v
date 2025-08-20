module counter10 (Clk_div10_out, clk, Rst);
    input clk, Rst;
    output reg Clk_div10_out;

    reg [3:0] count;
    always @(posedge clk or posedge Rst) begin
        if (Rst) begin
            count <= 0;
            Clk_div10_out <= 0;
        end else begin
            if (count == 9) begin
                count <= 0;
                Clk_div10_out <= ~Clk_div10_out;
            end else begin
                count <= count + 1;
            end
        end
    end

endmodule