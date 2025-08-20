module Dlatsc(q, data, aset, aclr, gate);
    parameter LAT_WIDTH =4;

    input aset, aclr, gate;
    input [LAT_WIDTH-1:0] data;
    output reg [LAT_WIDTH-1:0]  q;

    always @(posedge gate or posedge aset or posedge aclr) begin
        if(aset)begin 
            q <= (q | ~q);
        end
        if(aclr)begin
            q <= 0;
        end 
        if(!aset && !aclr) begin
            q <= data;
        end

    end


endmodule