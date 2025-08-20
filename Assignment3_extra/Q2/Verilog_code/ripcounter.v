module ripple_counter_4bit(out, clk, rstn);
    input clk, rstn;
    output [3:0] out;

    wire qn0, qn1, qn2, qn3;
    wire q0, q1, q2, q3;

    DFF dff0 (q0 ,qn0, qn0, rstn, clk);
    DFF dff1 (q1 ,qn1, qn1, rstn, q0);
    DFF dff2 (q2 ,qn2, qn2, rstn, q1);
    DFF dff3 (q3 ,qn3, qn3, rstn, q2);

    assign out[3:0] = {qn3, qn2, qn1, qn0}; 

endmodule