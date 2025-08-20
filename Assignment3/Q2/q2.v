module D_TFF(q ,qbar, d, rstn, clk);
    parameter FF_TYPE = "DFF";

    input d, rstn, clk;
    output reg q;
    output qbar;

    assign qbar = ~q;
    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            q <= 0;
        else begin
            if(FF_TYPE == "DFF")begin 
                q <= d;  
            end
            else begin 
                if(d)
                q <= ~q;
            end 
        end
    end
endmodule