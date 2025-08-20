module TFF(q ,qbar, t, rstn, clk);
    input t, rstn, clk;
    output reg q;
    output qbar;

    assign qbar = ~q;

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            q <= 0;
        else begin
            if(t)
                q <= ~q;
        end
    end
endmodule