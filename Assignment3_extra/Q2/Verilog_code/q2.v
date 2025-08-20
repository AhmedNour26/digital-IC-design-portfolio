module behavioral_counter (out, clk, set);
    input clk , set;
    output reg [3:0] out;

    always @(posedge clk or negedge set) begin
        if(!set)begin
            out <= 4'b1111;
        end
        else begin
            out <= out + 1;
        end 
    end
endmodule