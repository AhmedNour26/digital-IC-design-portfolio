module control_unit (unlock_doors, accelerate_car, speed_limit, car_speed, leading_distance, clk, rst);

    parameter MIN_DISTANCE = 7'd40;
    parameter STOP = 2'b00;
    parameter ACCELERATE = 2'b01;
    parameter DECELERATE = 2'b10;

    input [7:0] speed_limit, car_speed ;
    input [6:0] leading_distance ;
    input clk, rst;

    output reg unlock_doors, accelerate_car;
    (* fsm_encoding = "gray" *) reg [1:0] cs, ns;

    //state memory
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            cs <= STOP;
        end
        else begin
            cs <= ns;
        end
    end

    //next state logic
    always @(cs , speed_limit , car_speed , leading_distance) begin
        case (cs)
            STOP:
                begin
                    if(leading_distance<MIN_DISTANCE)
                        ns=STOP;
                    else
                        ns=ACCELERATE;
                end

            ACCELERATE:
                       begin
                            if((leading_distance>=MIN_DISTANCE) && (car_speed<speed_limit))
                                ns=ACCELERATE;
                            else
                                ns=DECELERATE;
                       end
                
            
            DECELERATE:
                    begin
                        if(car_speed == 0)
                            ns=STOP;
                        else if((leading_distance<MIN_DISTANCE) || (car_speed>speed_limit))
                            ns=DECELERATE;
                        else
                            ns=ACCELERATE;
                    end

            default : ns = STOP;
        endcase
    end

    //output logic
    always @(cs) begin
        case (cs)
            STOP:
                begin
                    unlock_doors = 1;
                    accelerate_car = 0;
                end
            ACCELERATE:
                begin
                    unlock_doors = 0;
                    accelerate_car = 1;
                end

            DECELERATE:
                begin
                    unlock_doors = 0;
                    accelerate_car = 0;
                end
        endcase
    end
endmodule