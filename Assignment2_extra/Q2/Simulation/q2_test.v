module demux_tb_exhaustive_self_checking ();
reg d_tb;
reg [1:0] s_tb;
reg [3:0] y_exp, temp1;
wire [3:0] y_dut;

demux14 DUT (y_dut, s_tb, d_tb);


integer i, j;
initial begin
    temp1 = 2'b01;
    for(i = 0; i < 4; i=i+1)begin
        s_tb = i;
        for(j = 0; j < 2; j=j+1)begin
            d_tb = temp1[j];
            if(s_tb == 0)
                y_exp = {3'b000, d_tb};
            else if(s_tb == 1)
                y_exp = {2'b00, d_tb, 1'b0};
            else if(s_tb == 2)
                y_exp = {1'b0, d_tb, 2'b00};
            else
                y_exp = {d_tb, 3'b000};
            #10;
            if(y_dut !== y_exp)begin
              $display("Error at %b in the demux", s_tb);
              $stop;
            end
        end
    end
    $display("No errors found");

end

endmodule