module DFF(q ,qbar, d, rstn, clk);
    input d, rstn, clk;
    output reg q;
    output qbar;

    assign qbar = ~q;

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            q <= 0;
        else begin
            q <= d;   
        end
    end

endmodule