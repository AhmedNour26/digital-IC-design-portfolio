module monitor (ERR, Din, clk, rst);
    parameter START     = 0; 
    parameter D0_is_1   = 1; 
    parameter D0_not_1  = 2; 
    parameter D1_is_1   = 3; 
    parameter D1_not_1  = 4; 

    input Din, clk, rst;
    output ERR;
    reg [2:0] cs, ns;

    //state memory
    always @(posedge clk or posedge rst) begin
        if(rst)
            cs<=START;
        else
            cs<=ns;
    end

    //nextstate
    always @(cs, Din) begin
        case(cs)
            START: begin
                if (Din == 0)
                    ns=D0_not_1;
                else
                    ns=D0_is_1;
            end
            D0_is_1:begin
                if (Din == 0)
                    ns=D1_not_1;
                else
                    ns=D1_is_1;
            end
            D0_not_1: ns=D1_not_1;
            D1_is_1: ns=START;
            D1_not_1: ns=START;
            default: ns=START;
        endcase
    end

    //output
    assign ERR = (cs == D1_is_1)? ((Din == 1)?  1 : 0) : 0;

endmodule