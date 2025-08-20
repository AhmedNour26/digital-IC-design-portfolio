module SLE_tb ();
  
    reg D_tb, CLK_tb, EN_tb, ALn_tb, ADn_tb, SLn_tb, SD_tb, LAT_tb;
    wire Q_tb; 

    SLE DUT(Q_tb, D_tb, CLK_tb, EN_tb, ALn_tb, ADn_tb, SLn_tb, SD_tb, LAT_tb);

    initial begin
        CLK_tb = 0;
        forever begin
            #5 CLK_tb = ~CLK_tb;
        end
    end

    initial begin
        D_tb = 0; EN_tb = 0; ALn_tb = 1; ADn_tb = 0; SLn_tb = 0; SD_tb = 0; LAT_tb = 0;
        #10;

        ALn_tb = 0;
        ADn_tb = $random;
        #10; 
        ALn_tb = 1;
        #10;

        LAT_tb = 0;
        repeat(20)begin
          D_tb = $random; EN_tb = $random; SLn_tb = $random; SD_tb = $random;
          #10;
        end

        LAT_tb = 1;
        repeat(20)begin
          D_tb = $random; EN_tb = $random; SLn_tb = $random; SD_tb = $random;
          #10;
        end

        $finish;
    end

endmodule