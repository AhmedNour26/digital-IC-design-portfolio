module D_TFF_D_tb();
parameter FF_TYPE = "DFF";
reg d_tb, rstn_tb, clk_tb;
wire q_exp, qbar_exp, q_tb, qbar_tb;

initial begin
    clk_tb = 0;
    forever begin
        #10 clk_tb = ~clk_tb;
    end
end

D_TFF #(FF_TYPE) DUT(q_tb, qbar_tb, d_tb, rstn_tb, clk_tb);

DFF TFF_golden_model(q_exp, qbar_exp, d_tb, rstn_tb, clk_tb);

initial begin
    d_tb = 0;
    rstn_tb = 1;
    #10 rstn_tb = 0;
    #10 rstn_tb = 1;
    repeat(100)begin
        @(posedge clk_tb);
        d_tb= $random;
    end
    #10 rstn_tb = 0;
    #10 rstn_tb = 1;
    $display("Test completed");
end

always @(posedge clk_tb or negedge rstn_tb) begin
    #1 if (q_tb !== q_exp || qbar_tb !== qbar_exp) begin
        $display("ERROR at D=%b reset=%b | Expected Q=%b and Q_bar=%b, Got Q=%b and Q_bar=%b",
        d_tb, rstn_tb, q_exp, qbar_exp, q_tb, qbar_tb);
        $stop;
    end
end

endmodule