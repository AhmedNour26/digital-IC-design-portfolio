module control_unit_tb ();
    parameter MIN_DISTANCE_tb = 7'd40;

    reg [7:0] speed_limit_tb, car_speed_tb ;
    reg [6:0] leading_distance_tb ;
    reg clk_tb, rst_tb;

    wire unlock_doors_tb, accelerate_car_tb;
    
    control_unit #(.MIN_DISTANCE(MIN_DISTANCE_tb)) DUT (unlock_doors_tb, accelerate_car_tb, speed_limit_tb, car_speed_tb, leading_distance_tb, clk_tb, rst_tb);

    initial begin
        clk_tb = 0;
        forever begin
            #1 clk_tb = ~clk_tb;
        end
    end

    initial begin
        rst_tb = 1;
        speed_limit_tb = 8'd60;
        car_speed_tb = 8'd0;
        leading_distance_tb = 7'd30;
        
        #10 rst_tb = 0;
        
        #10;
        $display("Test1: STOP state, distance = %d, speed = %d, limit = %d, unlock = %b, accel = %b",
                    leading_distance_tb, car_speed_tb, speed_limit_tb, unlock_doors_tb, accelerate_car_tb);

        @(negedge clk_tb);
        #10 car_speed_tb = 8'd30;
        leading_distance_tb = 7'd50;
        #10;
        $display("Test 2: ACCELERATE state, distance = %d, speed = %d, limit = %d, unlock = %b, accel = %b",
                    leading_distance_tb, car_speed_tb, speed_limit_tb, unlock_doors_tb, accelerate_car_tb);

        @(negedge clk_tb);
        #5 car_speed_tb = 8'd70;
        leading_distance_tb = 7'd50;
        #10;
        $display("Test 3: DECELERATE state, distance = %d, speed = %d, limit = %d, unlock = %b, accel = %b",
                    leading_distance_tb, car_speed_tb, speed_limit_tb, unlock_doors_tb, accelerate_car_tb);

        @(negedge clk_tb);
        #5 car_speed_tb = 8'd50;
        leading_distance_tb = 7'd30;
        #10;
        $display("Test 4: DECELERATE state, distance = %d, speed = %d, limit = %d, unlock = %b, accel = %b",
                    leading_distance_tb, car_speed_tb, speed_limit_tb, unlock_doors_tb, accelerate_car_tb);

        @(negedge clk_tb);
        #5 car_speed_tb = 8'd0;
        leading_distance_tb = 7'd30;
        #10;
        $display("Test 5: DECELERATE to STOP, distance = %d, speed = %d, limit = %d, unlock = %b, accel = %b",
                    leading_distance_tb, car_speed_tb, speed_limit_tb, unlock_doors_tb, accelerate_car_tb);
        

        #10 $finish;
    end

endmodule