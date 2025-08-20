module SLE (Q, D, CLK, EN, ALn, ADn, SLn, SD, LAT);
  
  input D, CLK, EN, ALn, ADn, SLn, SD, LAT;
  output  Q;
  reg Q_lat , Q_ff;


  assign Q = (LAT === 0)? Q_ff: Q_lat;

  always @(*) begin
    if (ALn && LAT && EN) begin
      if (!SLn)
        Q_lat = SD;
      else
        Q_lat = D;
    end
    else if (!ALn) begin  
      Q_lat = ~ADn;
    end
  end

  always @(posedge CLK) begin
    if (ALn && !LAT && EN) begin
      if (!SLn)
        Q_ff <= SD;
      else
        Q_ff <= D;
    end
  end

endmodule
