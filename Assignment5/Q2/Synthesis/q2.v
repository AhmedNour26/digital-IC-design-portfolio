module counter (y, rst, clk);
    parameter A = 0;
    parameter B = 1;
    parameter C = 2;
    parameter D = 3;
    
    input rst, clk;
    output reg [1:0] y;

(* fsm_encoding = "gray" *)    reg [1:0] cs, ns;
    //state memory
    always @(posedge clk or posedge rst) begin
        if(rst)
            cs<=A;
        else
            cs<=ns;
    end
    //nextstate
    always @(cs) begin
        case (cs)
            A: ns=B;
            B: ns=C;
            C: ns=D;
            D: ns=A;
            default: ns=A;
        endcase
    end
    //output
    always @(cs) begin
        case (cs)
            A: y=0;
            B: y=1;
            C: y=3;
            D: y=2;
            default: y=0;
        endcase
    end
endmodule