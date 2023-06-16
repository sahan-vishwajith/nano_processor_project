// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  2 15:47:24 2023
// Host        : LAPTOP-6CG52K6A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/ACER/Desktop/Done
//               assingment/Nano_processor/Nano_processor.sim/sim_1/synth/func/xsim/Program_counter_TB_func_synth.v}
// Design      : Nano_Processor_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADD_SUB
   (Zero_OBUF,
    Q);
  output Zero_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire Zero_OBUF;

  LUT4 #(
    .INIT(16'h0001)) 
    Z
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(Zero_OBUF));
endmodule

module D_FF
   (D,
    Res_IBUF,
    Q,
    Clk_out_reg);
  output [0:0]D;
  input Res_IBUF;
  input [0:0]Q;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [0:0]D;
  wire [0:0]Q;
  wire Res_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(Q),
        .Q(D),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_1
   (D,
    Res_IBUF,
    Q,
    Clk_out_reg);
  output [0:0]D;
  input Res_IBUF;
  input [0:0]Q;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [0:0]D;
  wire [0:0]Q;
  wire Res_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(Q),
        .Q(D),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_2
   (D,
    Res_IBUF,
    Q,
    Clk_out_reg);
  output [0:0]D;
  input Res_IBUF;
  input [0:0]Q;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [0:0]D;
  wire [0:0]Q;
  wire Res_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(Q),
        .Q(D),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_3
   (D,
    Res_IBUF,
    Q,
    Clk_out_reg);
  output [0:0]D;
  input Res_IBUF;
  input [0:0]Q;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [0:0]D;
  wire [0:0]Q;
  wire Res_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(Q),
        .Q(D),
        .R(Res_IBUF));
endmodule

module MUX_8_to_1_4bit
   (Q);
  output [3:0]Q;

  wire [3:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[1] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[2] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[3] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "MUX_8_to_1_4bit" *) 
module MUX_8_to_1_4bit_0
   (Q,
    D);
  output [3:0]Q;
  input [3:0]D;

  wire [3:0]D;
  wire [3:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Y_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[3]));
endmodule

(* NotValidForBitStream *)
module Nano_Processor_0
   (Reg_out,
    Res,
    Clk,
    Zero,
    OVF);
  output [3:0]Reg_out;
  input Res;
  input Clk;
  output Zero;
  output OVF;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire OVF;
  wire [3:0]Reg_out;
  wire Res;
  wire Res_IBUF;
  wire Zero;
  wire Zero_OBUF;
  wire [3:0]data4;
  wire [3:0]y0;

  ADD_SUB ADD_SUB_0
       (.Q(y0),
        .Zero_OBUF(Zero_OBUF));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  MUX_8_to_1_4bit MUX_8_to_1_4bit_0
       (.Q(y0));
  MUX_8_to_1_4bit_0 MUX_8_to_1_4bit_1
       (.D(data4),
        .Q(y0));
  OBUF OVF_OBUF_inst
       (.I(1'b0),
        .O(OVF));
  OBUFT \Reg_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(Reg_out[0]),
        .T(1'b1));
  OBUFT \Reg_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(Reg_out[1]),
        .T(1'b1));
  OBUFT \Reg_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(Reg_out[2]),
        .T(1'b1));
  OBUFT \Reg_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(Reg_out[3]),
        .T(1'b1));
  Register_Bank Register_Bank_0
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D(data4),
        .Q(y0),
        .Res_IBUF(Res_IBUF));
  IBUF Res_IBUF_inst
       (.I(Res),
        .O(Res_IBUF));
  OBUF Zero_OBUF_inst
       (.I(Zero_OBUF),
        .O(Zero));
endmodule

module Register_Bank
   (D,
    Clk_IBUF_BUFG,
    Res_IBUF,
    Q);
  output [3:0]D;
  input Clk_IBUF_BUFG;
  input Res_IBUF;
  input [3:0]Q;

  wire Clk_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;
  wire Res_IBUF;
  wire Slow_Clk_0_n_0;

  Registers Registers_4
       (.Clk_out_reg(Slow_Clk_0_n_0),
        .D(D),
        .Q(Q),
        .Res_IBUF(Res_IBUF));
  Slow_Clk Slow_Clk_0
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q_reg(Slow_Clk_0_n_0));
endmodule

module Registers
   (D,
    Res_IBUF,
    Q,
    Clk_out_reg);
  output [3:0]D;
  input Res_IBUF;
  input [3:0]Q;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [3:0]D;
  wire [3:0]Q;
  wire Res_IBUF;

  D_FF D_FF0
       (.Clk_out_reg(Clk_out_reg),
        .D(D[0]),
        .Q(Q[0]),
        .Res_IBUF(Res_IBUF));
  D_FF_1 D_FF1
       (.Clk_out_reg(Clk_out_reg),
        .D(D[1]),
        .Q(Q[1]),
        .Res_IBUF(Res_IBUF));
  D_FF_2 D_FF2
       (.Clk_out_reg(Clk_out_reg),
        .D(D[2]),
        .Q(Q[2]),
        .Res_IBUF(Res_IBUF));
  D_FF_3 D_FF3
       (.Clk_out_reg(Clk_out_reg),
        .D(D[3]),
        .Q(Q[3]),
        .Res_IBUF(Res_IBUF));
endmodule

module Slow_Clk
   (Q_reg,
    Clk_IBUF_BUFG);
  output Q_reg;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire Clk_out_i_1_n_0;
  wire Clk_status;
  wire Clk_status_i_1_n_0;
  wire Q_reg;
  wire [31:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire [0:0]count_0;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    Clk_out_i_1
       (.I0(Clk_status),
        .I1(\count[31]_i_2_n_0 ),
        .I2(\count[31]_i_3_n_0 ),
        .I3(\count[31]_i_4_n_0 ),
        .I4(\count[31]_i_5_n_0 ),
        .I5(Q_reg),
        .O(Clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_out_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_out_i_1_n_0),
        .Q(Q_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    Clk_status_i_1
       (.I0(\count[31]_i_5_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_3_n_0 ),
        .I3(\count[31]_i_2_n_0 ),
        .I4(Clk_status),
        .O(Clk_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_status_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_status_i_1_n_0),
        .Q(Clk_status),
        .R(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S(count[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S(count[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S(count[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S(count[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S(count[20:17]));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S(count[24:21]));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S(count[28:25]));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[31]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_2 
       (.I0(count[10]),
        .I1(count[11]),
        .I2(count[8]),
        .I3(count[9]),
        .I4(\count[31]_i_6_n_0 ),
        .O(\count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[31]_i_3 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(\count[31]_i_7_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_4 
       (.I0(count[26]),
        .I1(count[27]),
        .I2(count[24]),
        .I3(count[25]),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5 
       (.I0(count[18]),
        .I1(count[19]),
        .I2(count[16]),
        .I3(count[17]),
        .I4(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_6 
       (.I0(count[13]),
        .I1(count[12]),
        .I2(count[15]),
        .I3(count[14]),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7 
       (.I0(count[5]),
        .I1(count[4]),
        .I2(count[7]),
        .I3(count[6]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(count[29]),
        .I1(count[28]),
        .I2(count[31]),
        .I3(count[30]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(count[21]),
        .I1(count[20]),
        .I2(count[23]),
        .I3(count[22]),
        .O(\count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_6),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_5),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_4),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_7),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_6),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_5),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__2_n_4),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__3_n_7),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__3_n_6),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__3_n_5),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_7),
        .Q(count[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__3_n_4),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__4_n_7),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__4_n_6),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__4_n_5),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__4_n_4),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__5_n_7),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__5_n_6),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__5_n_5),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__5_n_4),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__6_n_7),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_6),
        .Q(count[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__6_n_6),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__6_n_5),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_5),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry_n_4),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_7),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_6),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_5),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__0_n_4),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count0_carry__1_n_7),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
