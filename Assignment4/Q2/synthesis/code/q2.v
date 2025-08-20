module DSP48A1_simplified (P, A, B, D, C, clk, rst_n);
    parameter OPERATION = "ADD";

    input [17:0] A, B, D;
    input [47:0] C;
    input clk, rst_n;
    output reg [47:0] P;

    reg [17:0] A_reg, B_reg, D_reg;
    reg [47:0] C_reg;
    reg [18:0] DB;
    reg [47:0] DBA;

    always @(posedge clk) begin
        A_reg <= A; B_reg <= B; D_reg <= D; C_reg <= C;
    end
    always @(posedge clk) begin
        if(!rst_n)begin
            DB <= 0;
            DBA <= 0;
            P <= 0;
        end
        else begin
            if(OPERATION == "ADD")begin
                DB <= D_reg + B_reg;
                DBA <= DB * A_reg;
                P <= DBA + C_reg;
            end
            else begin
                DB <= D_reg - B_reg;
                DBA <= DB * A_reg;
                P <= DBA - C_reg;
            end
        end
    end

endmodule