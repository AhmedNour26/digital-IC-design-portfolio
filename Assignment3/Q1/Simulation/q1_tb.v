module dff_en_pre_tb();
reg E_tb, D_tb, clk_tb, PRE_tb, Q_exp;
wire Q_tb;

dff_en_pre DUT (Q_tb, E_tb, D_tb, clk_tb, PRE_tb);

initial begin
    clk_tb = 0;
    forever begin
        #10 clk_tb = ~clk_tb;
    end
end

initial begin
        E_tb = 0;
        D_tb = 0;
        PRE_tb = 1;
        Q_exp  = 0;
        #5;
        PRE_tb = 0; 
        #5;
        PRE_tb = 1; 
        #5;

        if (Q_tb !== 1'b1) begin
            $display("ERROR: PRE failed! Expected Q=1 after PRE=0, Got Q=%b", Q_tb);
            $stop;
        end

        repeat(100) begin
            @(negedge clk_tb); 
            D_tb = $random;
            E_tb = $random;
            PRE_tb = 1; 
        end

        @(negedge clk_tb);
        PRE_tb = 0;
        @(negedge clk_tb);
        PRE_tb = 1;

        #20;
        $display("Test completed");
end
always @(posedge clk_tb or negedge PRE_tb) begin
    if (!PRE_tb)
        Q_exp <= 1'b1;
    else if (E_tb)
        Q_exp <= D_tb;
end
always @(posedge clk_tb) begin
    #1 if (Q_tb !== Q_exp) begin
        $display("ERROR at D=%b E=%b PRE=%b | Expected Q=%b, Got Q=%b", D_tb, E_tb, PRE_tb, Q_exp, Q_tb);
        $stop;
    end
end
endmodule 