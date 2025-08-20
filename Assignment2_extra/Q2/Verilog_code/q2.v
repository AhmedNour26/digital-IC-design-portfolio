module demux14 (y, s, d);
input d;
input [1:0] s;
output reg [3:0] y;

always @(*) begin
    y = 0;
    case(s) 
        2'b00: y[0] = d;
        2'b01: y[1] = d;
        2'b10: y[2] = d;
        default: y[3] = d;
    endcase
end
endmodule