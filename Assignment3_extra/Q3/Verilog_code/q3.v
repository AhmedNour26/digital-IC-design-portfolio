module behavioral_counter_div (out, div_2, div_4, clk, set);
    input clk , set;
    output reg [3:0] out;
    output div_2, div_4;

    assign div_2 = (out[0] == 1)? 1 : 0;
    assign div_4 = (out[1] == 1)? 1: 0;

    always @(posedge clk or negedge set) begin
        if(!set)begin
            out <= 4'b1111;
        end
        else begin
            out <= out + 1;
        end 
    end
endmodule