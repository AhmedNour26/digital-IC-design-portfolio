module Dlatch(q, clr, d, g);
    input clr, d, g;
    output reg q;
    always @(negedge clr) begin
        if(g)
           q <=d; 
    end


endmodule