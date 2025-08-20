// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 20 11:33:05 2025
// Host        : nour running 64-bit major release  (build 9200)
// Command     : write_verilog D:/other/Courses/Kareem_waseem_Digital_Design/Ass/Ass5/Q5/Synthesis/project_1.v
// Design      : FIFO_memory
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* FIFO_DEPTH = "512" *) (* FIFO_WIDTH = "16" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module FIFO_memory
   (dout_b,
    full,
    empty,
    din_a,
    clk_a,
    clk_b,
    rst,
    wen_a,
    ren_b);
  output [15:0]dout_b;
  output full;
  output empty;
  input [15:0]din_a;
  input clk_a;
  input clk_b;
  input rst;
  input wen_a;
  input ren_b;

  wire \<const0> ;
  wire \<const1> ;
  wire Rptr0;
  wire \Rptr[0]_i_1_n_0 ;
  wire \Rptr[1]_i_1_n_0 ;
  wire \Rptr[2]_i_1_n_0 ;
  wire \Rptr[3]_i_1_n_0 ;
  wire \Rptr[4]_i_1_n_0 ;
  wire \Rptr[5]_i_1_n_0 ;
  wire \Rptr[6]_i_1_n_0 ;
  wire \Rptr[7]_i_1_n_0 ;
  wire \Rptr[8]_i_1_n_0 ;
  wire \Rptr[9]_i_3_n_0 ;
  wire [8:0]Rptr_reg_rep__0;
  wire Wptr0;
  wire \Wptr[9]_i_2_n_0 ;
  wire \Wptr_reg_n_0_[0] ;
  wire \Wptr_reg_n_0_[1] ;
  wire \Wptr_reg_n_0_[2] ;
  wire \Wptr_reg_n_0_[3] ;
  wire \Wptr_reg_n_0_[4] ;
  wire \Wptr_reg_n_0_[5] ;
  wire \Wptr_reg_n_0_[6] ;
  wire \Wptr_reg_n_0_[7] ;
  wire \Wptr_reg_n_0_[8] ;
  wire clk_a;
  wire clk_a_IBUF;
  wire clk_a_IBUF_BUFG;
  wire clk_b;
  wire clk_b_IBUF;
  wire clk_b_IBUF_BUFG;
  wire [15:0]din_a;
  wire [15:0]din_a_IBUF;
  wire [15:0]dout_b;
  wire [15:0]dout_b_OBUF;
  wire empty;
  wire empty_OBUF;
  wire empty_OBUF_inst_i_1_n_1;
  wire empty_OBUF_inst_i_1_n_2;
  wire empty_OBUF_inst_i_1_n_3;
  wire empty_OBUF_inst_i_2_n_0;
  wire empty_OBUF_inst_i_3_n_0;
  wire empty_OBUF_inst_i_4_n_0;
  wire empty_OBUF_inst_i_5_n_0;
  wire full;
  wire full2;
  wire full_OBUF;
  wire full_OBUF_inst_i_2_n_2;
  wire full_OBUF_inst_i_2_n_3;
  wire full_OBUF_inst_i_3_n_0;
  wire full_OBUF_inst_i_4_n_0;
  wire full_OBUF_inst_i_5_n_0;
  wire mem_reg_i_2_n_0;
  wire mem_reg_i_3_n_0;
  wire p_0_in;
  wire [9:9]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire p_1_in;
  wire ren_b;
  wire ren_b_IBUF;
  wire rst;
  wire rst_IBUF;
  wire wen_a;
  wire wen_a_IBUF;

  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \Rptr[0]_i_1 
       (.I0(Rptr_reg_rep__0[0]),
        .O(\Rptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Rptr[1]_i_1 
       (.I0(Rptr_reg_rep__0[0]),
        .I1(Rptr_reg_rep__0[1]),
        .O(\Rptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Rptr[2]_i_1 
       (.I0(Rptr_reg_rep__0[0]),
        .I1(Rptr_reg_rep__0[1]),
        .I2(Rptr_reg_rep__0[2]),
        .O(\Rptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Rptr[3]_i_1 
       (.I0(Rptr_reg_rep__0[1]),
        .I1(Rptr_reg_rep__0[0]),
        .I2(Rptr_reg_rep__0[2]),
        .I3(Rptr_reg_rep__0[3]),
        .O(\Rptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Rptr[4]_i_1 
       (.I0(Rptr_reg_rep__0[2]),
        .I1(Rptr_reg_rep__0[0]),
        .I2(Rptr_reg_rep__0[1]),
        .I3(Rptr_reg_rep__0[3]),
        .I4(Rptr_reg_rep__0[4]),
        .O(\Rptr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Rptr[5]_i_1 
       (.I0(Rptr_reg_rep__0[3]),
        .I1(Rptr_reg_rep__0[1]),
        .I2(Rptr_reg_rep__0[0]),
        .I3(Rptr_reg_rep__0[2]),
        .I4(Rptr_reg_rep__0[4]),
        .I5(Rptr_reg_rep__0[5]),
        .O(\Rptr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Rptr[6]_i_1 
       (.I0(\Rptr[9]_i_3_n_0 ),
        .I1(Rptr_reg_rep__0[6]),
        .O(\Rptr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Rptr[7]_i_1 
       (.I0(\Rptr[9]_i_3_n_0 ),
        .I1(Rptr_reg_rep__0[6]),
        .I2(Rptr_reg_rep__0[7]),
        .O(\Rptr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Rptr[8]_i_1 
       (.I0(Rptr_reg_rep__0[6]),
        .I1(\Rptr[9]_i_3_n_0 ),
        .I2(Rptr_reg_rep__0[7]),
        .I3(Rptr_reg_rep__0[8]),
        .O(\Rptr[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Rptr[9]_i_1 
       (.I0(ren_b_IBUF),
        .I1(empty_OBUF),
        .O(Rptr0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Rptr[9]_i_2 
       (.I0(Rptr_reg_rep__0[7]),
        .I1(\Rptr[9]_i_3_n_0 ),
        .I2(Rptr_reg_rep__0[6]),
        .I3(Rptr_reg_rep__0[8]),
        .I4(p_0_in),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Rptr[9]_i_3 
       (.I0(Rptr_reg_rep__0[5]),
        .I1(Rptr_reg_rep__0[3]),
        .I2(Rptr_reg_rep__0[1]),
        .I3(Rptr_reg_rep__0[0]),
        .I4(Rptr_reg_rep__0[2]),
        .I5(Rptr_reg_rep__0[4]),
        .O(\Rptr[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[0] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[0]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[1] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[1]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[2] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[2]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[3] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[3]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[4] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[4]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[5] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[5]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[6] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[6]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[7] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[7]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[8] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(\Rptr[8]_i_1_n_0 ),
        .Q(Rptr_reg_rep__0[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Rptr_reg[9] 
       (.C(clk_b_IBUF_BUFG),
        .CE(Rptr0),
        .D(p_0_in__0),
        .Q(p_0_in),
        .R(rst_IBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \Wptr[0]_i_1 
       (.I0(\Wptr_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Wptr[1]_i_1 
       (.I0(\Wptr_reg_n_0_[0] ),
        .I1(\Wptr_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Wptr[2]_i_1 
       (.I0(\Wptr_reg_n_0_[0] ),
        .I1(\Wptr_reg_n_0_[1] ),
        .I2(\Wptr_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Wptr[3]_i_1 
       (.I0(\Wptr_reg_n_0_[1] ),
        .I1(\Wptr_reg_n_0_[0] ),
        .I2(\Wptr_reg_n_0_[2] ),
        .I3(\Wptr_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Wptr[4]_i_1 
       (.I0(\Wptr_reg_n_0_[2] ),
        .I1(\Wptr_reg_n_0_[0] ),
        .I2(\Wptr_reg_n_0_[1] ),
        .I3(\Wptr_reg_n_0_[3] ),
        .I4(\Wptr_reg_n_0_[4] ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Wptr[5]_i_1 
       (.I0(\Wptr_reg_n_0_[3] ),
        .I1(\Wptr_reg_n_0_[1] ),
        .I2(\Wptr_reg_n_0_[0] ),
        .I3(\Wptr_reg_n_0_[2] ),
        .I4(\Wptr_reg_n_0_[4] ),
        .I5(\Wptr_reg_n_0_[5] ),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Wptr[6]_i_1 
       (.I0(\Wptr[9]_i_2_n_0 ),
        .I1(\Wptr_reg_n_0_[6] ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Wptr[7]_i_1 
       (.I0(\Wptr[9]_i_2_n_0 ),
        .I1(\Wptr_reg_n_0_[6] ),
        .I2(\Wptr_reg_n_0_[7] ),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Wptr[8]_i_1 
       (.I0(\Wptr_reg_n_0_[6] ),
        .I1(\Wptr[9]_i_2_n_0 ),
        .I2(\Wptr_reg_n_0_[7] ),
        .I3(\Wptr_reg_n_0_[8] ),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Wptr[9]_i_1 
       (.I0(\Wptr_reg_n_0_[7] ),
        .I1(\Wptr[9]_i_2_n_0 ),
        .I2(\Wptr_reg_n_0_[6] ),
        .I3(\Wptr_reg_n_0_[8] ),
        .I4(p_1_in),
        .O(p_0_in__1[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Wptr[9]_i_2 
       (.I0(\Wptr_reg_n_0_[5] ),
        .I1(\Wptr_reg_n_0_[3] ),
        .I2(\Wptr_reg_n_0_[1] ),
        .I3(\Wptr_reg_n_0_[0] ),
        .I4(\Wptr_reg_n_0_[2] ),
        .I5(\Wptr_reg_n_0_[4] ),
        .O(\Wptr[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[0] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[0]),
        .Q(\Wptr_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[1] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[1]),
        .Q(\Wptr_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[2] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[2]),
        .Q(\Wptr_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[3] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[3]),
        .Q(\Wptr_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[4] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[4]),
        .Q(\Wptr_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[5] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[5]),
        .Q(\Wptr_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[6] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[6]),
        .Q(\Wptr_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[7] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[7]),
        .Q(\Wptr_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[8] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[8]),
        .Q(\Wptr_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Wptr_reg[9] 
       (.C(clk_a_IBUF_BUFG),
        .CE(Wptr0),
        .D(p_0_in__1[9]),
        .Q(p_1_in),
        .R(rst_IBUF));
  BUFG clk_a_IBUF_BUFG_inst
       (.I(clk_a_IBUF),
        .O(clk_a_IBUF_BUFG));
  IBUF clk_a_IBUF_inst
       (.I(clk_a),
        .O(clk_a_IBUF));
  BUFG clk_b_IBUF_BUFG_inst
       (.I(clk_b_IBUF),
        .O(clk_b_IBUF_BUFG));
  IBUF clk_b_IBUF_inst
       (.I(clk_b),
        .O(clk_b_IBUF));
  IBUF \din_a_IBUF[0]_inst 
       (.I(din_a[0]),
        .O(din_a_IBUF[0]));
  IBUF \din_a_IBUF[10]_inst 
       (.I(din_a[10]),
        .O(din_a_IBUF[10]));
  IBUF \din_a_IBUF[11]_inst 
       (.I(din_a[11]),
        .O(din_a_IBUF[11]));
  IBUF \din_a_IBUF[12]_inst 
       (.I(din_a[12]),
        .O(din_a_IBUF[12]));
  IBUF \din_a_IBUF[13]_inst 
       (.I(din_a[13]),
        .O(din_a_IBUF[13]));
  IBUF \din_a_IBUF[14]_inst 
       (.I(din_a[14]),
        .O(din_a_IBUF[14]));
  IBUF \din_a_IBUF[15]_inst 
       (.I(din_a[15]),
        .O(din_a_IBUF[15]));
  IBUF \din_a_IBUF[1]_inst 
       (.I(din_a[1]),
        .O(din_a_IBUF[1]));
  IBUF \din_a_IBUF[2]_inst 
       (.I(din_a[2]),
        .O(din_a_IBUF[2]));
  IBUF \din_a_IBUF[3]_inst 
       (.I(din_a[3]),
        .O(din_a_IBUF[3]));
  IBUF \din_a_IBUF[4]_inst 
       (.I(din_a[4]),
        .O(din_a_IBUF[4]));
  IBUF \din_a_IBUF[5]_inst 
       (.I(din_a[5]),
        .O(din_a_IBUF[5]));
  IBUF \din_a_IBUF[6]_inst 
       (.I(din_a[6]),
        .O(din_a_IBUF[6]));
  IBUF \din_a_IBUF[7]_inst 
       (.I(din_a[7]),
        .O(din_a_IBUF[7]));
  IBUF \din_a_IBUF[8]_inst 
       (.I(din_a[8]),
        .O(din_a_IBUF[8]));
  IBUF \din_a_IBUF[9]_inst 
       (.I(din_a[9]),
        .O(din_a_IBUF[9]));
  OBUF \dout_b_OBUF[0]_inst 
       (.I(dout_b_OBUF[0]),
        .O(dout_b[0]));
  OBUF \dout_b_OBUF[10]_inst 
       (.I(dout_b_OBUF[10]),
        .O(dout_b[10]));
  OBUF \dout_b_OBUF[11]_inst 
       (.I(dout_b_OBUF[11]),
        .O(dout_b[11]));
  OBUF \dout_b_OBUF[12]_inst 
       (.I(dout_b_OBUF[12]),
        .O(dout_b[12]));
  OBUF \dout_b_OBUF[13]_inst 
       (.I(dout_b_OBUF[13]),
        .O(dout_b[13]));
  OBUF \dout_b_OBUF[14]_inst 
       (.I(dout_b_OBUF[14]),
        .O(dout_b[14]));
  OBUF \dout_b_OBUF[15]_inst 
       (.I(dout_b_OBUF[15]),
        .O(dout_b[15]));
  OBUF \dout_b_OBUF[1]_inst 
       (.I(dout_b_OBUF[1]),
        .O(dout_b[1]));
  OBUF \dout_b_OBUF[2]_inst 
       (.I(dout_b_OBUF[2]),
        .O(dout_b[2]));
  OBUF \dout_b_OBUF[3]_inst 
       (.I(dout_b_OBUF[3]),
        .O(dout_b[3]));
  OBUF \dout_b_OBUF[4]_inst 
       (.I(dout_b_OBUF[4]),
        .O(dout_b[4]));
  OBUF \dout_b_OBUF[5]_inst 
       (.I(dout_b_OBUF[5]),
        .O(dout_b[5]));
  OBUF \dout_b_OBUF[6]_inst 
       (.I(dout_b_OBUF[6]),
        .O(dout_b[6]));
  OBUF \dout_b_OBUF[7]_inst 
       (.I(dout_b_OBUF[7]),
        .O(dout_b[7]));
  OBUF \dout_b_OBUF[8]_inst 
       (.I(dout_b_OBUF[8]),
        .O(dout_b[8]));
  OBUF \dout_b_OBUF[9]_inst 
       (.I(dout_b_OBUF[9]),
        .O(dout_b[9]));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  CARRY4 empty_OBUF_inst_i_1
       (.CI(\<const0> ),
        .CO({empty_OBUF,empty_OBUF_inst_i_1_n_1,empty_OBUF_inst_i_1_n_2,empty_OBUF_inst_i_1_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({empty_OBUF_inst_i_2_n_0,empty_OBUF_inst_i_3_n_0,empty_OBUF_inst_i_4_n_0,empty_OBUF_inst_i_5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    empty_OBUF_inst_i_2
       (.I0(p_1_in),
        .I1(p_0_in),
        .O(empty_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_OBUF_inst_i_3
       (.I0(\Wptr_reg_n_0_[6] ),
        .I1(Rptr_reg_rep__0[6]),
        .I2(Rptr_reg_rep__0[8]),
        .I3(\Wptr_reg_n_0_[8] ),
        .I4(Rptr_reg_rep__0[7]),
        .I5(\Wptr_reg_n_0_[7] ),
        .O(empty_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_OBUF_inst_i_4
       (.I0(\Wptr_reg_n_0_[3] ),
        .I1(Rptr_reg_rep__0[3]),
        .I2(Rptr_reg_rep__0[5]),
        .I3(\Wptr_reg_n_0_[5] ),
        .I4(Rptr_reg_rep__0[4]),
        .I5(\Wptr_reg_n_0_[4] ),
        .O(empty_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_OBUF_inst_i_5
       (.I0(\Wptr_reg_n_0_[0] ),
        .I1(Rptr_reg_rep__0[0]),
        .I2(Rptr_reg_rep__0[2]),
        .I3(\Wptr_reg_n_0_[2] ),
        .I4(Rptr_reg_rep__0[1]),
        .I5(\Wptr_reg_n_0_[1] ),
        .O(empty_OBUF_inst_i_5_n_0));
  OBUF full_OBUF_inst
       (.I(full_OBUF),
        .O(full));
  LUT3 #(
    .INIT(8'h60)) 
    full_OBUF_inst_i_1
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(full2),
        .O(full_OBUF));
  CARRY4 full_OBUF_inst_i_2
       (.CI(\<const0> ),
        .CO({full2,full_OBUF_inst_i_2_n_2,full_OBUF_inst_i_2_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,full_OBUF_inst_i_3_n_0,full_OBUF_inst_i_4_n_0,full_OBUF_inst_i_5_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_OBUF_inst_i_3
       (.I0(\Wptr_reg_n_0_[6] ),
        .I1(Rptr_reg_rep__0[6]),
        .I2(Rptr_reg_rep__0[8]),
        .I3(\Wptr_reg_n_0_[8] ),
        .I4(Rptr_reg_rep__0[7]),
        .I5(\Wptr_reg_n_0_[7] ),
        .O(full_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_OBUF_inst_i_4
       (.I0(\Wptr_reg_n_0_[3] ),
        .I1(Rptr_reg_rep__0[3]),
        .I2(Rptr_reg_rep__0[5]),
        .I3(\Wptr_reg_n_0_[5] ),
        .I4(Rptr_reg_rep__0[4]),
        .I5(\Wptr_reg_n_0_[4] ),
        .O(full_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_OBUF_inst_i_5
       (.I0(\Wptr_reg_n_0_[0] ),
        .I1(Rptr_reg_rep__0[0]),
        .I2(Rptr_reg_rep__0[2]),
        .I3(\Wptr_reg_n_0_[2] ),
        .I4(Rptr_reg_rep__0[1]),
        .I5(\Wptr_reg_n_0_[1] ),
        .O(full_OBUF_inst_i_5_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\Wptr_reg_n_0_[8] ,\Wptr_reg_n_0_[7] ,\Wptr_reg_n_0_[6] ,\Wptr_reg_n_0_[5] ,\Wptr_reg_n_0_[4] ,\Wptr_reg_n_0_[3] ,\Wptr_reg_n_0_[2] ,\Wptr_reg_n_0_[1] ,\Wptr_reg_n_0_[0] ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,Rptr_reg_rep__0,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_a_IBUF_BUFG),
        .CLKBWRCLK(clk_b_IBUF_BUFG),
        .DIADI(din_a_IBUF),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(dout_b_OBUF),
        .ENARDEN(Wptr0),
        .ENBWREN(mem_reg_i_2_n_0),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({mem_reg_i_3_n_0,mem_reg_i_3_n_0}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT4 #(
    .INIT(16'hA22A)) 
    mem_reg_i_1
       (.I0(wen_a_IBUF),
        .I1(full2),
        .I2(p_0_in),
        .I3(p_1_in),
        .O(Wptr0));
  LUT3 #(
    .INIT(8'h04)) 
    mem_reg_i_2
       (.I0(empty_OBUF),
        .I1(ren_b_IBUF),
        .I2(rst_IBUF),
        .O(mem_reg_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_3
       (.I0(rst_IBUF),
        .O(mem_reg_i_3_n_0));
  IBUF ren_b_IBUF_inst
       (.I(ren_b),
        .O(ren_b_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF wen_a_IBUF_inst
       (.I(wen_a),
        .O(wen_a_IBUF));
endmodule
