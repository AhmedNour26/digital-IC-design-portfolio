module shift_register(PO, load_value, clk, rst, load);
    parameter SHIFT_DIRECTION = "LEFT";
    parameter SHIFT_AMOUNT = 1;

    input clk, rst, load;
    input [7:0] load_value;
    output reg [7:0] PO;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            PO <= 0;
        end
        else if (load) begin
            PO <= load_value;
        end
        else begin
            if (SHIFT_DIRECTION == "LEFT") begin
                PO <= PO << SHIFT_AMOUNT;
            end
            else begin
                PO <= PO >> SHIFT_AMOUNT;
            end
        end
    end
endmodule