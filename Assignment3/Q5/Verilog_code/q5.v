module Parameterized_Shift_register(q, shiftout, sset, aset, data, sclr,
                                     aclr, enable, clock, shiftin, load);
    
    parameter LOAD_AVALUE = 1; 
    parameter LOAD_SVALUE = 1; 
    parameter SHIFT_DIRECTION = "LEFT"; 
    parameter SHIFT_WIDTH = 8;

    input sclr, aclr, enable, clock, shiftin, load, sset, aset;
    input [SHIFT_WIDTH-1:0] data;
    output reg [SHIFT_WIDTH-1:0] q;
    output reg shiftout; 

    always @(posedge clock or posedge aclr or posedge aset) begin
        if(aclr)begin
          q <= 0;
        end
        else if (aset) begin
            q <= LOAD_AVALUE;
        end
        else if(enable)begin
          if(sclr)begin
            q <= 0;
          end 
          else if (sset) begin
            q <= LOAD_SVALUE;
          end else begin
            if(!load)begin
                if(SHIFT_DIRECTION == "LEFT")begin
                  {shiftout, q} <= {q[SHIFT_WIDTH-1:0], shiftin};
                end 
                else begin
                  {q, shiftout} <= {shiftin, q[SHIFT_WIDTH-1:0]};
                end           
            end 
            else begin
                q <= data;
            end
          end
        end
    end

endmodule