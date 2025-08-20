module LFSR (out, clk, rst, set);
    input clk, rst, set;
    output reg [3:0] out;

    always @(posedge clk or posedge rst or posedge set) begin
        if (rst && set) begin
            out <= 1;
        end
        else begin
            out <= {out[2], out[1], out[0] ^ out[3], out[3]};
        end
    end


endmodule