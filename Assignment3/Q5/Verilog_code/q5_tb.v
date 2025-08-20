module Parameterized_Shift_register_tb();
    
    parameter LOAD_AVALUE_tb = 2; 
    parameter LOAD_SVALUE_tb = 4; 
    parameter SHIFT_DIRECTION_tb = "LEFT"; 
    parameter SHIFT_WIDTH_tb = 8;

    reg sclr_tb, aclr_tb, enable_tb, clock_tb, shiftin_tb, load_tb, sset_tb, aset_tb;
    reg [SHIFT_WIDTH_tb-1:0] data_tb;
    wire [SHIFT_WIDTH_tb-1:0] q_tb;
    wire shiftout_tb; 
    reg [SHIFT_WIDTH_tb-1:0] q_exp;
    reg shiftout_exp; 

    Parameterized_Shift_register #(.LOAD_AVALUE(LOAD_AVALUE_tb), .LOAD_SVALUE(LOAD_SVALUE_tb), 
                                    .SHIFT_DIRECTION(SHIFT_DIRECTION_tb), .SHIFT_WIDTH(SHIFT_WIDTH_tb)) 
    DUT (q_tb, shiftout_tb, sset_tb, aset_tb, data_tb, sclr_tb, aclr_tb, enable_tb, clock_tb, shiftin_tb, load_tb);

    initial begin
        clock_tb = 0;
        forever begin
            #5 clock_tb = ~clock_tb;
        end
    end

    initial begin
        {aclr_tb, aset_tb, sclr_tb, sset_tb, enable_tb, load_tb, shiftin_tb} = 0;
        data_tb = 0;
        #20;

        aclr_tb = 1; aset_tb = 1;
        repeat(5)begin
            sset_tb = $random; data_tb = $random; sclr_tb = $random; 
            enable_tb = $random; shiftin_tb = $random; load_tb = $random;
            q_exp = 0;

            @(negedge clock_tb);
            if (q_tb !== q_exp) begin
                $display("error in aclr");
                //$stop;
            end
        end
        #10;
        aset_tb = 0;
        #1;
        aclr_tb = 0; aset_tb = 1;
        repeat(5)begin
            sset_tb = $random; data_tb = $random; sclr_tb = $random; 
            enable_tb = $random; shiftin_tb = $random; load_tb = $random;
            q_exp = LOAD_AVALUE_tb;

            @(negedge clock_tb);
            if (q_tb !== q_exp) begin
                $display("error in aset");
                //$stop;
            end
        end
        #10;
        aset_tb = 0; sclr_tb = 1; sset_tb = 1;
        repeat(5)begin 
            data_tb = $random; enable_tb = $random; 
            shiftin_tb = $random; load_tb = $random;

            if(enable_tb)begin
                @(posedge clock_tb);
                q_exp = 0;
                
                @(negedge clock_tb);
                if (q_tb !== q_exp) begin
                    $display("error in sclr");
                    //$stop;
                end
            end
        end
        #10;
        sclr_tb = 0; sset_tb = 1;
        repeat(5)begin
            data_tb = $random; enable_tb = $random; 
            shiftin_tb = $random; load_tb = $random;

            if (enable_tb) begin
                @(posedge clock_tb);
                q_exp = LOAD_SVALUE_tb;
                
                @(negedge clock_tb);
                if (q_tb !== q_exp) begin   
                    $display("error in sset");
                    //$stop;
                end    
            end
        end
        #10;
        sset_tb = 0; load_tb = 1;  enable_tb = 1;
        repeat(5) begin
            
            data_tb = $random; shiftin_tb = $random;
            @(posedge clock_tb);
            q_exp = data_tb;

            @(negedge clock_tb);
            if (q_tb !== q_exp) begin
                $display("error in load");
                //$stop;
            end
        end
        #10;
        load_tb = 0; enable_tb = 1;
        repeat(5) begin
            
            data_tb = q_tb; shiftin_tb = $random;
            @(posedge clock_tb);
            if (SHIFT_DIRECTION_tb == "LEFT") begin
                q_exp = {q_tb[SHIFT_WIDTH_tb-2:0], shiftin_tb};
                shiftout_exp = q_tb[SHIFT_WIDTH_tb-1];
            end
            else begin
                q_exp = {shiftin_tb, q_tb[SHIFT_WIDTH_tb-1:1]};
                shiftout_exp = q_tb[0];
            end
            #1;

            @(negedge clock_tb);
            if (q_tb !== q_exp || shiftout_tb !== shiftout_exp) begin
                $display("error in shift");
                //$stop;
            end
        end

        $display("Test is completed");
        $finish;
    end
endmodule