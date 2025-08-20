// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug 18 08:55:28 2025
// Host        : nour running 64-bit major release  (build 9200)
// Command     : write_verilog D:/other/Courses/Kareem_waseem_Digital_Design/Ass/Ass5/Q1/synthesis/project_1.v
// Design      : control_unit
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ACCELERATE = "2'b01" *) (* DECELERATE = "2'b10" *) (* MIN_DISTANCE = "7'b0101000" *) 
(* STOP = "2'b00" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module control_unit
   (unlock_doors,
    accelerate_car,
    speed_limit,
    car_speed,
    leading_distance,
    clk,
    rst);
  output unlock_doors;
  output accelerate_car;
  input [7:0]speed_limit;
  input [7:0]car_speed;
  input [6:0]leading_distance;
  input clk;
  input rst;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_cs[1]_i_10_n_0 ;
  wire \FSM_sequential_cs[1]_i_11_n_0 ;
  wire \FSM_sequential_cs[1]_i_12_n_0 ;
  wire \FSM_sequential_cs[1]_i_13_n_0 ;
  wire \FSM_sequential_cs[1]_i_14_n_0 ;
  wire \FSM_sequential_cs[1]_i_15_n_0 ;
  wire \FSM_sequential_cs[1]_i_16_n_0 ;
  wire \FSM_sequential_cs[1]_i_17_n_0 ;
  wire \FSM_sequential_cs[1]_i_18_n_0 ;
  wire \FSM_sequential_cs[1]_i_19_n_0 ;
  wire \FSM_sequential_cs[1]_i_20_n_0 ;
  wire \FSM_sequential_cs[1]_i_21_n_0 ;
  wire \FSM_sequential_cs[1]_i_22_n_0 ;
  wire \FSM_sequential_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_cs[1]_i_5_n_0 ;
  wire \FSM_sequential_cs[1]_i_6_n_0 ;
  wire \FSM_sequential_cs[1]_i_7_n_0 ;
  wire \FSM_sequential_cs[1]_i_8_n_0 ;
  wire \FSM_sequential_cs[1]_i_9_n_0 ;
  wire \FSM_sequential_cs_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_cs_reg[1]_i_2_n_1 ;
  wire \FSM_sequential_cs_reg[1]_i_2_n_2 ;
  wire \FSM_sequential_cs_reg[1]_i_2_n_3 ;
  wire \FSM_sequential_cs_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_cs_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_cs_reg[1]_i_4_n_2 ;
  wire \FSM_sequential_cs_reg[1]_i_4_n_3 ;
  wire GND_2;
  wire VCC_2;
  wire accelerate_car;
  wire accelerate_car_OBUF;
  wire accelerate_car_reg_i_1_n_0;
  wire [7:0]car_speed;
  wire [7:0]car_speed_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]cs;
  wire [6:0]leading_distance;
  wire [6:3]leading_distance_IBUF;
  wire [1:0]ns;
  wire rst;
  wire rst_IBUF;
  wire [7:0]speed_limit;
  wire [7:0]speed_limit_IBUF;
  wire unlock_doors;
  wire unlock_doors_OBUF;
  wire unlock_doors_reg_i_1_n_0;
  wire unlock_doors_reg_i_2_n_0;

  LUT6 #(
    .INIT(64'h000000000F001F1F)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(\FSM_sequential_cs[1]_i_3_n_0 ),
        .I1(\FSM_sequential_cs_reg[1]_i_2_n_0 ),
        .I2(cs[1]),
        .I3(\FSM_sequential_cs_reg[1]_i_4_n_0 ),
        .I4(cs[0]),
        .I5(\FSM_sequential_cs[1]_i_5_n_0 ),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'h00003322FF0F0000)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(\FSM_sequential_cs_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_cs[1]_i_3_n_0 ),
        .I2(\FSM_sequential_cs_reg[1]_i_4_n_0 ),
        .I3(\FSM_sequential_cs[1]_i_5_n_0 ),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(ns[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_10 
       (.I0(car_speed_IBUF[6]),
        .I1(speed_limit_IBUF[6]),
        .I2(speed_limit_IBUF[7]),
        .I3(car_speed_IBUF[7]),
        .O(\FSM_sequential_cs[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_11 
       (.I0(car_speed_IBUF[4]),
        .I1(speed_limit_IBUF[4]),
        .I2(speed_limit_IBUF[5]),
        .I3(car_speed_IBUF[5]),
        .O(\FSM_sequential_cs[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_12 
       (.I0(car_speed_IBUF[2]),
        .I1(speed_limit_IBUF[2]),
        .I2(speed_limit_IBUF[3]),
        .I3(car_speed_IBUF[3]),
        .O(\FSM_sequential_cs[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_13 
       (.I0(car_speed_IBUF[0]),
        .I1(speed_limit_IBUF[0]),
        .I2(speed_limit_IBUF[1]),
        .I3(car_speed_IBUF[1]),
        .O(\FSM_sequential_cs[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_cs[1]_i_14 
       (.I0(car_speed_IBUF[2]),
        .I1(car_speed_IBUF[3]),
        .I2(car_speed_IBUF[0]),
        .I3(car_speed_IBUF[1]),
        .O(\FSM_sequential_cs[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_15 
       (.I0(speed_limit_IBUF[6]),
        .I1(car_speed_IBUF[6]),
        .I2(car_speed_IBUF[7]),
        .I3(speed_limit_IBUF[7]),
        .O(\FSM_sequential_cs[1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_16 
       (.I0(speed_limit_IBUF[4]),
        .I1(car_speed_IBUF[4]),
        .I2(car_speed_IBUF[5]),
        .I3(speed_limit_IBUF[5]),
        .O(\FSM_sequential_cs[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_17 
       (.I0(speed_limit_IBUF[2]),
        .I1(car_speed_IBUF[2]),
        .I2(car_speed_IBUF[3]),
        .I3(speed_limit_IBUF[3]),
        .O(\FSM_sequential_cs[1]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_18 
       (.I0(speed_limit_IBUF[0]),
        .I1(car_speed_IBUF[0]),
        .I2(car_speed_IBUF[1]),
        .I3(speed_limit_IBUF[1]),
        .O(\FSM_sequential_cs[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_19 
       (.I0(car_speed_IBUF[6]),
        .I1(speed_limit_IBUF[6]),
        .I2(speed_limit_IBUF[7]),
        .I3(car_speed_IBUF[7]),
        .O(\FSM_sequential_cs[1]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_20 
       (.I0(car_speed_IBUF[4]),
        .I1(speed_limit_IBUF[4]),
        .I2(speed_limit_IBUF[5]),
        .I3(car_speed_IBUF[5]),
        .O(\FSM_sequential_cs[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_21 
       (.I0(car_speed_IBUF[2]),
        .I1(speed_limit_IBUF[2]),
        .I2(speed_limit_IBUF[3]),
        .I3(car_speed_IBUF[3]),
        .O(\FSM_sequential_cs[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_cs[1]_i_22 
       (.I0(car_speed_IBUF[0]),
        .I1(speed_limit_IBUF[0]),
        .I2(speed_limit_IBUF[1]),
        .I3(car_speed_IBUF[1]),
        .O(\FSM_sequential_cs[1]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_cs[1]_i_3 
       (.I0(car_speed_IBUF[5]),
        .I1(car_speed_IBUF[4]),
        .I2(car_speed_IBUF[7]),
        .I3(car_speed_IBUF[6]),
        .I4(\FSM_sequential_cs[1]_i_14_n_0 ),
        .O(\FSM_sequential_cs[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_cs[1]_i_5 
       (.I0(leading_distance_IBUF[5]),
        .I1(leading_distance_IBUF[4]),
        .I2(leading_distance_IBUF[3]),
        .I3(leading_distance_IBUF[6]),
        .O(\FSM_sequential_cs[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_6 
       (.I0(car_speed_IBUF[6]),
        .I1(speed_limit_IBUF[6]),
        .I2(speed_limit_IBUF[7]),
        .I3(car_speed_IBUF[7]),
        .O(\FSM_sequential_cs[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_7 
       (.I0(car_speed_IBUF[4]),
        .I1(speed_limit_IBUF[4]),
        .I2(speed_limit_IBUF[5]),
        .I3(car_speed_IBUF[5]),
        .O(\FSM_sequential_cs[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_8 
       (.I0(car_speed_IBUF[2]),
        .I1(speed_limit_IBUF[2]),
        .I2(speed_limit_IBUF[3]),
        .I3(car_speed_IBUF[3]),
        .O(\FSM_sequential_cs[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_cs[1]_i_9 
       (.I0(car_speed_IBUF[0]),
        .I1(speed_limit_IBUF[0]),
        .I2(speed_limit_IBUF[1]),
        .I3(car_speed_IBUF[1]),
        .O(\FSM_sequential_cs[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "STOP:00,ACCELERATE:01,DECELERATE:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns[0]),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "STOP:00,ACCELERATE:01,DECELERATE:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(ns[1]),
        .Q(cs[1]));
  CARRY4 \FSM_sequential_cs_reg[1]_i_2 
       (.CI(\<const0> ),
        .CO({\FSM_sequential_cs_reg[1]_i_2_n_0 ,\FSM_sequential_cs_reg[1]_i_2_n_1 ,\FSM_sequential_cs_reg[1]_i_2_n_2 ,\FSM_sequential_cs_reg[1]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\FSM_sequential_cs[1]_i_6_n_0 ,\FSM_sequential_cs[1]_i_7_n_0 ,\FSM_sequential_cs[1]_i_8_n_0 ,\FSM_sequential_cs[1]_i_9_n_0 }),
        .S({\FSM_sequential_cs[1]_i_10_n_0 ,\FSM_sequential_cs[1]_i_11_n_0 ,\FSM_sequential_cs[1]_i_12_n_0 ,\FSM_sequential_cs[1]_i_13_n_0 }));
  CARRY4 \FSM_sequential_cs_reg[1]_i_4 
       (.CI(\<const0> ),
        .CO({\FSM_sequential_cs_reg[1]_i_4_n_0 ,\FSM_sequential_cs_reg[1]_i_4_n_1 ,\FSM_sequential_cs_reg[1]_i_4_n_2 ,\FSM_sequential_cs_reg[1]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\FSM_sequential_cs[1]_i_15_n_0 ,\FSM_sequential_cs[1]_i_16_n_0 ,\FSM_sequential_cs[1]_i_17_n_0 ,\FSM_sequential_cs[1]_i_18_n_0 }),
        .S({\FSM_sequential_cs[1]_i_19_n_0 ,\FSM_sequential_cs[1]_i_20_n_0 ,\FSM_sequential_cs[1]_i_21_n_0 ,\FSM_sequential_cs[1]_i_22_n_0 }));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  OBUF accelerate_car_OBUF_inst
       (.I(accelerate_car_OBUF),
        .O(accelerate_car));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    accelerate_car_reg
       (.CLR(GND_2),
        .D(accelerate_car_reg_i_1_n_0),
        .G(unlock_doors_reg_i_2_n_0),
        .GE(VCC_2),
        .Q(accelerate_car_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    accelerate_car_reg_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .O(accelerate_car_reg_i_1_n_0));
  IBUF \car_speed_IBUF[0]_inst 
       (.I(car_speed[0]),
        .O(car_speed_IBUF[0]));
  IBUF \car_speed_IBUF[1]_inst 
       (.I(car_speed[1]),
        .O(car_speed_IBUF[1]));
  IBUF \car_speed_IBUF[2]_inst 
       (.I(car_speed[2]),
        .O(car_speed_IBUF[2]));
  IBUF \car_speed_IBUF[3]_inst 
       (.I(car_speed[3]),
        .O(car_speed_IBUF[3]));
  IBUF \car_speed_IBUF[4]_inst 
       (.I(car_speed[4]),
        .O(car_speed_IBUF[4]));
  IBUF \car_speed_IBUF[5]_inst 
       (.I(car_speed[5]),
        .O(car_speed_IBUF[5]));
  IBUF \car_speed_IBUF[6]_inst 
       (.I(car_speed[6]),
        .O(car_speed_IBUF[6]));
  IBUF \car_speed_IBUF[7]_inst 
       (.I(car_speed[7]),
        .O(car_speed_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \leading_distance_IBUF[3]_inst 
       (.I(leading_distance[3]),
        .O(leading_distance_IBUF[3]));
  IBUF \leading_distance_IBUF[4]_inst 
       (.I(leading_distance[4]),
        .O(leading_distance_IBUF[4]));
  IBUF \leading_distance_IBUF[5]_inst 
       (.I(leading_distance[5]),
        .O(leading_distance_IBUF[5]));
  IBUF \leading_distance_IBUF[6]_inst 
       (.I(leading_distance[6]),
        .O(leading_distance_IBUF[6]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \speed_limit_IBUF[0]_inst 
       (.I(speed_limit[0]),
        .O(speed_limit_IBUF[0]));
  IBUF \speed_limit_IBUF[1]_inst 
       (.I(speed_limit[1]),
        .O(speed_limit_IBUF[1]));
  IBUF \speed_limit_IBUF[2]_inst 
       (.I(speed_limit[2]),
        .O(speed_limit_IBUF[2]));
  IBUF \speed_limit_IBUF[3]_inst 
       (.I(speed_limit[3]),
        .O(speed_limit_IBUF[3]));
  IBUF \speed_limit_IBUF[4]_inst 
       (.I(speed_limit[4]),
        .O(speed_limit_IBUF[4]));
  IBUF \speed_limit_IBUF[5]_inst 
       (.I(speed_limit[5]),
        .O(speed_limit_IBUF[5]));
  IBUF \speed_limit_IBUF[6]_inst 
       (.I(speed_limit[6]),
        .O(speed_limit_IBUF[6]));
  IBUF \speed_limit_IBUF[7]_inst 
       (.I(speed_limit[7]),
        .O(speed_limit_IBUF[7]));
  OBUF unlock_doors_OBUF_inst
       (.I(unlock_doors_OBUF),
        .O(unlock_doors));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    unlock_doors_reg
       (.CLR(GND_2),
        .D(unlock_doors_reg_i_1_n_0),
        .G(unlock_doors_reg_i_2_n_0),
        .GE(VCC_2),
        .Q(unlock_doors_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    unlock_doors_reg_i_1
       (.I0(cs[1]),
        .I1(cs[0]),
        .O(unlock_doors_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    unlock_doors_reg_i_2
       (.I0(cs[1]),
        .I1(cs[0]),
        .O(unlock_doors_reg_i_2_n_0));
endmodule
