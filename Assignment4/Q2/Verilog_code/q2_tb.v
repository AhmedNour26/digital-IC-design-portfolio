module DSP48A1_simplified_tb ( );
    parameter OPERATION_tb = "ADD";

    reg [17:0] A_tb, B_tb, D_tb;
    reg [47:0] C_tb;
    reg clk_tb, rst_n_tb;
    wire [47:0] P_tb;

    DSP48A1_simplified #(.OPERATION(OPERATION_tb)) DUT (P_tb, A_tb, B_tb, D_tb, C_tb, clk_tb, rst_n_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #5 clk_tb = ~clk_tb;
        end
    end

    initial begin

        $monitor("A=%0d B=%0d D=%0d C=%0d P=%0d", A_tb, B_tb, D_tb, C_tb, P_tb);

        rst_n_tb = 0; A_tb = 10; B_tb = 5; D_tb = 7; C_tb = 20;
        #10 rst_n_tb = 1;
        #100;
        rst_n_tb = 0; A_tb = 6; B_tb = 20; D_tb = 15; C_tb = 100;
        #10 rst_n_tb = 1;
        #100;
        $finish;
    end

    
endmodule