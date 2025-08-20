module ALSU (out, leds, A, B, opcode, clk, rst, cin, serial_in, 
            red_op_A, red_op_B, bypass_A, bypass_B, direction);

    parameter input_PRIORITY = "A";
    parameter FULL_ADDER = "ON";

    input [2:0] A, B, opcode;
    input clk, rst, cin, serial_in, red_op_A, red_op_B, bypass_A, bypass_B, direction;

    output reg [5:0] out;
    output reg [15:0] leds;

    reg LED_check;
    reg [2:0] blink_count;
    wire [2:0] priority_var = (input_PRIORITY == "A") ? A : B;

    always @(posedge clk or posedge rst) begin

        if (rst) begin
            out <= 0;
            LED_check <= 0;
        end

        else if (bypass_A || bypass_B) begin
            case ({bypass_A, bypass_B})
                1: out <= bypass_B;
                2: out <= bypass_A;
                3: out <= priority_var;
            endcase
            LED_check <= 0;
        end 
        
        else begin
            LED_check <= 0;
            case ({opcode, red_op_A, red_op_B})
                6'b000_0_0: out <= A & B;
                6'b000_0_1: out <= &B;
                6'b000_1_0: out <= &A;
                6'b000_1_1: out <= &priority_var;
                6'b001_0_0: out <= A ^ B;
                6'b001_0_1: out <= ^B;
                6'b001_1_0: out <= ^A;
                6'b001_1_1: out <= ^priority_var;
                6'b010_0_0: out <= (FULL_ADDER == "ON") ? (A + B + cin) : (A + B);
                6'b011_0_0: out <= A * B;
                6'b100_0_0: out <= direction ? {out[4:0], serial_in} : {serial_in, out[5:1]};
                6'b101_0_0: out <= direction ? {out[4:0], out[5]} : {out[0], out[5:1]};
                default: begin
                            out <= 0;
                            LED_check <= 1;
                         end
            endcase
        end
    end 
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            leds <= 0;
            blink_count <= 0;
        end
        else if (LED_check) begin
            if (blink_count == 7) begin
                leds <= ~leds;
                blink_count <= 0;
            end
            else begin
                blink_count <= blink_count + 1;
            end
        end
        else begin
            leds <= 0;
        end
    end

endmodule