module ALSU_tb ();

    parameter input_PRIORITY_tb = "A";
    parameter FULL_ADDER_tb = "ON";

    reg [2:0] A_tb, B_tb, opcode_tb;
    reg clk_tb, rst_tb, cin_tb, serial_in_tb, red_op_A_tb, red_op_B_tb, bypass_A_tb, bypass_B_tb, direction_tb;

    reg [5:0] out_exp;

    wire [5:0] out_tb;
    wire [15:0] leds_tb;

    ALSU #(.input_PRIORITY(input_PRIORITY_tb), .FULL_ADDER(FULL_ADDER_tb)) DUT (out_tb, leds_tb, A_tb, B_tb, 
    opcode_tb, clk_tb, rst_tb, cin_tb, serial_in_tb, red_op_A_tb, red_op_B_tb, bypass_A_tb, bypass_B_tb, direction_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #5 clk_tb = ~clk_tb;
        end
    end

    initial begin
        rst_tb = 1;
        cin_tb = 0; serial_in_tb = 0; red_op_A_tb = 0; red_op_B_tb = 0;
        bypass_A_tb = 0; bypass_B_tb = 0; direction_tb = 0;
        A_tb = 0; B_tb = 0; opcode_tb = 0;

        @(negedge clk_tb);
        if(out_tb != 0 || leds_tb != 0)begin
            $display("error Output is not reset");
        end
        #10;

        rst_tb = 0; bypass_A_tb = 1; bypass_B_tb = 1;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            opcode_tb = $urandom_range(0,5);
            @(negedge clk_tb);
            @(negedge clk_tb);
            if(out_tb != A_tb || leds_tb != 0)begin
                $display("error Output is not bypassed");
            end
        end
        #10;

        bypass_A_tb = 0; bypass_B_tb = 0; opcode_tb = 0;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            red_op_A_tb = $random;
            red_op_B_tb = $random;
            
            if(red_op_A_tb)begin
                out_exp = &A_tb;
            end
            else if (red_op_B_tb) begin
                out_exp = &B_tb;
            end
            else begin
                out_exp = A_tb & B_tb;
            end

            @(negedge clk_tb);
            @(negedge clk_tb);
            if(out_tb != out_exp || leds_tb != 0)begin
                $display("error Output is not and");
            end
        end
        #10;

        opcode_tb = 1;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            red_op_A_tb = $random;
            red_op_B_tb = $random;

            if(red_op_A_tb)begin
                out_exp = ^A_tb;
            end
            else if (red_op_B_tb) begin
                out_exp = ^B_tb;
            end
            else begin
                out_exp = A_tb ^ B_tb;
            end

            @(negedge clk_tb);
            @(negedge clk_tb);
            if(out_tb != out_exp || leds_tb != 0)begin
                $display("error Output is not Xor");
            end
        end
        #10;

        opcode_tb = 2; red_op_A_tb = 0; red_op_B_tb = 0;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            cin_tb = $random;

            out_exp = A_tb + B_tb + cin_tb;

            @(negedge clk_tb);
            @(negedge clk_tb);
            if(out_tb != out_exp || leds_tb != 0)begin
                $display("error Output is not adding");
            end
        end
        #10;

        opcode_tb = 3;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;

            out_exp = A_tb * B_tb;

            @(negedge clk_tb);
            @(negedge clk_tb);
            if(out_tb != out_exp || leds_tb != 0)begin
                $display("error Output is not multiplying");
            end
        end
        #10;

        opcode_tb = 4;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            direction_tb = $random;
            serial_in_tb = $random;
            @(negedge clk_tb);
            @(negedge clk_tb);
        end
        #10;

        opcode_tb = 5;
        repeat(10)begin
            A_tb = $random;
            B_tb = $random;
            direction_tb = $random;
            serial_in_tb = $random;
            @(negedge clk_tb);
            @(negedge clk_tb);
        end
        #10;

        $finish;
    end


endmodule