// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_streaming_fft_stage (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        X_R_address0,
        X_R_ce0,
        X_R_q0,
        X_R_address1,
        X_R_ce1,
        X_R_q1,
        X_I_address0,
        X_I_ce0,
        X_I_q0,
        X_I_address1,
        X_I_ce1,
        X_I_q1,
        Out_R_address0,
        Out_R_ce0,
        Out_R_we0,
        Out_R_d0,
        Out_R_address1,
        Out_R_ce1,
        Out_R_we1,
        Out_R_d1,
        Out_I_address0,
        Out_I_ce0,
        Out_I_we0,
        Out_I_d0,
        Out_I_address1,
        Out_I_ce1,
        Out_I_we1,
        Out_I_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_address0;
output   X_R_ce0;
input  [31:0] X_R_q0;
output  [9:0] X_R_address1;
output   X_R_ce1;
input  [31:0] X_R_q1;
output  [9:0] X_I_address0;
output   X_I_ce0;
input  [31:0] X_I_q0;
output  [9:0] X_I_address1;
output   X_I_ce1;
input  [31:0] X_I_q1;
output  [9:0] Out_R_address0;
output   Out_R_ce0;
output   Out_R_we0;
output  [31:0] Out_R_d0;
output  [9:0] Out_R_address1;
output   Out_R_ce1;
output   Out_R_we1;
output  [31:0] Out_R_d1;
output  [9:0] Out_I_address0;
output   Out_I_ce0;
output   Out_I_we0;
output  [31:0] Out_I_d0;
output  [9:0] Out_I_address1;
output   Out_I_ce1;
output   Out_I_we1;
output  [31:0] Out_I_d1;

reg ap_idle;
reg X_R_ce0;
reg X_R_ce1;
reg X_I_ce0;
reg X_I_ce1;
reg Out_R_ce0;
reg Out_R_we0;
reg Out_R_ce1;
reg Out_R_we1;
reg Out_I_ce0;
reg Out_I_we0;
reg Out_I_ce1;
reg Out_I_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln46_fu_184_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_loop_exit_ready_delayed;
wire   [9:0] shl_ln47_fu_196_p2;
reg   [9:0] shl_ln47_reg_235;
reg   [9:0] shl_ln47_reg_235_pp0_iter1_reg;
reg   [9:0] shl_ln47_reg_235_pp0_iter2_reg;
reg   [9:0] shl_ln47_reg_235_pp0_iter3_reg;
wire   [63:0] zext_ln54_fu_208_p1;
reg   [63:0] zext_ln54_reg_240;
reg   [63:0] zext_ln54_reg_240_pp0_iter1_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter2_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter3_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter4_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter5_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter6_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter7_reg;
reg   [63:0] zext_ln54_reg_240_pp0_iter8_reg;
reg   [31:0] X_R_load_reg_256;
reg   [31:0] X_R_load_reg_256_pp0_iter2_reg;
reg   [31:0] X_I_load_reg_262;
reg   [31:0] X_I_load_reg_262_pp0_iter2_reg;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] mul1_reg_268;
wire   [31:0] grp_fu_170_p2;
reg   [31:0] mul_reg_273;
wire   [63:0] zext_ln53_fu_219_p1;
reg   [63:0] zext_ln53_reg_278;
reg   [63:0] zext_ln53_reg_278_pp0_iter5_reg;
reg   [63:0] zext_ln53_reg_278_pp0_iter6_reg;
reg   [63:0] zext_ln53_reg_278_pp0_iter7_reg;
reg   [63:0] zext_ln53_reg_278_pp0_iter8_reg;
wire   [31:0] grp_fu_140_p2;
reg   [31:0] temp_R_reg_294;
wire   [31:0] grp_fu_144_p2;
reg   [31:0] temp_I_reg_300;
reg   [31:0] X_R_load_10_reg_306;
reg   [31:0] X_I_load_10_reg_312;
wire   [31:0] grp_fu_148_p2;
reg   [31:0] sub_reg_318;
wire   [31:0] grp_fu_152_p2;
reg   [31:0] sub1_reg_323;
wire   [31:0] grp_fu_156_p2;
reg   [31:0] add_reg_328;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] add1_reg_333;
wire    ap_block_pp0_stage0;
reg   [9:0] t_fu_36;
wire   [9:0] add_ln46_fu_190_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_t_1;
wire   [9:0] or_ln53_fu_202_p2;
reg    grp_fu_140_ce;
reg    grp_fu_144_ce;
reg    grp_fu_148_ce;
reg    grp_fu_152_ce;
reg    grp_fu_156_ce;
reg    grp_fu_160_ce;
reg    grp_fu_164_ce;
reg    grp_fu_170_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_249;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_reg_256_pp0_iter2_reg),
    .din1(mul1_reg_268),
    .ce(grp_fu_140_ce),
    .dout(grp_fu_140_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_reg_262_pp0_iter2_reg),
    .din1(mul_reg_273),
    .ce(grp_fu_144_ce),
    .dout(grp_fu_144_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_10_reg_306),
    .din1(temp_R_reg_294),
    .ce(grp_fu_148_ce),
    .dout(grp_fu_148_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_10_reg_312),
    .din1(temp_I_reg_300),
    .ce(grp_fu_152_ce),
    .dout(grp_fu_152_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_10_reg_306),
    .din1(temp_R_reg_294),
    .ce(grp_fu_156_ce),
    .dout(grp_fu_156_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_10_reg_312),
    .din1(temp_I_reg_300),
    .ce(grp_fu_160_ce),
    .dout(grp_fu_160_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_q1),
    .din1(32'd2147483648),
    .ce(grp_fu_164_ce),
    .dout(grp_fu_164_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_q1),
    .din1(32'd2147483648),
    .ce(grp_fu_170_ce),
    .dout(grp_fu_170_p2)
);

fft_streaming_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue),
    .ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_249)) begin
        if ((icmp_ln46_fu_184_p2 == 1'd0)) begin
            t_fu_36 <= add_ln46_fu_190_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            t_fu_36 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        X_I_load_10_reg_312 <= X_I_q0;
        X_R_load_10_reg_306 <= X_R_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_I_load_reg_262 <= X_I_q1;
        X_R_load_reg_256 <= X_R_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        X_I_load_reg_262_pp0_iter2_reg <= X_I_load_reg_262;
        X_R_load_reg_256_pp0_iter2_reg <= X_R_load_reg_256;
        add1_reg_333 <= grp_fu_160_p2;
        add_reg_328 <= grp_fu_156_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        mul1_reg_268 <= grp_fu_164_p2;
        mul_reg_273 <= grp_fu_170_p2;
        shl_ln47_reg_235_pp0_iter2_reg[9 : 1] <= shl_ln47_reg_235_pp0_iter1_reg[9 : 1];
        shl_ln47_reg_235_pp0_iter3_reg[9 : 1] <= shl_ln47_reg_235_pp0_iter2_reg[9 : 1];
        sub1_reg_323 <= grp_fu_152_p2;
        sub_reg_318 <= grp_fu_148_p2;
        temp_I_reg_300 <= grp_fu_144_p2;
        temp_R_reg_294 <= grp_fu_140_p2;
        zext_ln53_reg_278[9 : 1] <= zext_ln53_fu_219_p1[9 : 1];
        zext_ln53_reg_278_pp0_iter5_reg[9 : 1] <= zext_ln53_reg_278[9 : 1];
        zext_ln53_reg_278_pp0_iter6_reg[9 : 1] <= zext_ln53_reg_278_pp0_iter5_reg[9 : 1];
        zext_ln53_reg_278_pp0_iter7_reg[9 : 1] <= zext_ln53_reg_278_pp0_iter6_reg[9 : 1];
        zext_ln53_reg_278_pp0_iter8_reg[9 : 1] <= zext_ln53_reg_278_pp0_iter7_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter2_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter1_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter3_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter2_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter4_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter3_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter5_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter4_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter6_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter5_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter7_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter6_reg[9 : 1];
        zext_ln54_reg_240_pp0_iter8_reg[9 : 1] <= zext_ln54_reg_240_pp0_iter7_reg[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        shl_ln47_reg_235_pp0_iter1_reg[9 : 1] <= shl_ln47_reg_235[9 : 1];
        zext_ln54_reg_240_pp0_iter1_reg[9 : 1] <= zext_ln54_reg_240[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln46_fu_184_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln47_reg_235[9 : 1] <= shl_ln47_fu_196_p2[9 : 1];
        zext_ln54_reg_240[9 : 1] <= zext_ln54_fu_208_p1[9 : 1];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_I_ce0 = 1'b1;
    end else begin
        Out_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_I_ce1 = 1'b1;
    end else begin
        Out_I_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_I_we0 = 1'b1;
    end else begin
        Out_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_I_we1 = 1'b1;
    end else begin
        Out_I_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_R_ce0 = 1'b1;
    end else begin
        Out_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_R_ce1 = 1'b1;
    end else begin
        Out_R_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_R_we0 = 1'b1;
    end else begin
        Out_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Out_R_we1 = 1'b1;
    end else begin
        Out_R_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        X_I_ce0 = 1'b1;
    end else begin
        X_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_I_ce1 = 1'b1;
    end else begin
        X_I_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        X_R_ce0 = 1'b1;
    end else begin
        X_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_R_ce1 = 1'b1;
    end else begin
        X_R_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln46_fu_184_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_t_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_t_1 = t_fu_36;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_140_ce = 1'b1;
    end else begin
        grp_fu_140_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_144_ce = 1'b1;
    end else begin
        grp_fu_144_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_148_ce = 1'b1;
    end else begin
        grp_fu_148_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_152_ce = 1'b1;
    end else begin
        grp_fu_152_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_156_ce = 1'b1;
    end else begin
        grp_fu_156_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_160_ce = 1'b1;
    end else begin
        grp_fu_160_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_164_ce = 1'b1;
    end else begin
        grp_fu_164_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_170_ce = 1'b1;
    end else begin
        grp_fu_170_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Out_I_address0 = zext_ln53_reg_278_pp0_iter8_reg;

assign Out_I_address1 = zext_ln54_reg_240_pp0_iter8_reg;

assign Out_I_d0 = add1_reg_333;

assign Out_I_d1 = sub1_reg_323;

assign Out_R_address0 = zext_ln53_reg_278_pp0_iter8_reg;

assign Out_R_address1 = zext_ln54_reg_240_pp0_iter8_reg;

assign Out_R_d0 = add_reg_328;

assign Out_R_d1 = sub_reg_318;

assign X_I_address0 = zext_ln53_fu_219_p1;

assign X_I_address1 = zext_ln54_fu_208_p1;

assign X_R_address0 = zext_ln53_fu_219_p1;

assign X_R_address1 = zext_ln54_fu_208_p1;

assign add_ln46_fu_190_p2 = (ap_sig_allocacmp_t_1 + 10'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_249 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln46_fu_184_p2 = ((ap_sig_allocacmp_t_1 == 10'd512) ? 1'b1 : 1'b0);

assign or_ln53_fu_202_p2 = (shl_ln47_fu_196_p2 | 10'd1);

assign shl_ln47_fu_196_p2 = ap_sig_allocacmp_t_1 << 10'd1;

assign zext_ln53_fu_219_p1 = shl_ln47_reg_235_pp0_iter3_reg;

assign zext_ln54_fu_208_p1 = or_ln53_fu_202_p2;

always @ (posedge ap_clk) begin
    shl_ln47_reg_235[0] <= 1'b0;
    shl_ln47_reg_235_pp0_iter1_reg[0] <= 1'b0;
    shl_ln47_reg_235_pp0_iter2_reg[0] <= 1'b0;
    shl_ln47_reg_235_pp0_iter3_reg[0] <= 1'b0;
    zext_ln54_reg_240[0] <= 1'b1;
    zext_ln54_reg_240[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter1_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter2_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter3_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter4_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter5_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter6_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter7_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_240_pp0_iter8_reg[0] <= 1'b1;
    zext_ln54_reg_240_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln53_reg_278[0] <= 1'b0;
    zext_ln53_reg_278[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln53_reg_278_pp0_iter5_reg[0] <= 1'b0;
    zext_ln53_reg_278_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln53_reg_278_pp0_iter6_reg[0] <= 1'b0;
    zext_ln53_reg_278_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln53_reg_278_pp0_iter7_reg[0] <= 1'b0;
    zext_ln53_reg_278_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln53_reg_278_pp0_iter8_reg[0] <= 1'b0;
    zext_ln53_reg_278_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_streaming_fft_stage
