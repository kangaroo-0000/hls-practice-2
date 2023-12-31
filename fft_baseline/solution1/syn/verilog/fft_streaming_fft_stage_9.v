// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_streaming_fft_stage_9 (
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
        OUT_R_address0,
        OUT_R_ce0,
        OUT_R_we0,
        OUT_R_d0,
        OUT_R_address1,
        OUT_R_ce1,
        OUT_R_we1,
        OUT_R_d1,
        OUT_I_address0,
        OUT_I_ce0,
        OUT_I_we0,
        OUT_I_d0,
        OUT_I_address1,
        OUT_I_ce1,
        OUT_I_we1,
        OUT_I_d1
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
output  [9:0] OUT_R_address0;
output   OUT_R_ce0;
output   OUT_R_we0;
output  [31:0] OUT_R_d0;
output  [9:0] OUT_R_address1;
output   OUT_R_ce1;
output   OUT_R_we1;
output  [31:0] OUT_R_d1;
output  [9:0] OUT_I_address0;
output   OUT_I_ce0;
output   OUT_I_we0;
output  [31:0] OUT_I_d0;
output  [9:0] OUT_I_address1;
output   OUT_I_ce1;
output   OUT_I_we1;
output  [31:0] OUT_I_d1;

reg ap_idle;
reg X_R_ce0;
reg X_R_ce1;
reg X_I_ce0;
reg X_I_ce1;
reg OUT_R_ce0;
reg OUT_R_we0;
reg OUT_R_ce1;
reg OUT_R_we1;
reg OUT_I_ce0;
reg OUT_I_we0;
reg OUT_I_ce1;
reg OUT_I_we1;

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
wire   [0:0] icmp_ln43_fu_230_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] W_real16_address0;
reg    W_real16_ce0;
wire   [31:0] W_real16_q0;
wire   [8:0] W_imag8_address0;
reg    W_imag8_ce0;
wire   [31:0] W_imag8_q0;
wire   [63:0] j_cast_fu_242_p1;
reg   [63:0] j_cast_reg_292;
reg   [63:0] j_cast_reg_292_pp0_iter1_reg;
reg   [63:0] j_cast_reg_292_pp0_iter2_reg;
reg   [63:0] j_cast_reg_292_pp0_iter3_reg;
reg   [63:0] j_cast_reg_292_pp0_iter4_reg;
reg   [63:0] j_cast_reg_292_pp0_iter5_reg;
reg   [63:0] j_cast_reg_292_pp0_iter6_reg;
reg   [63:0] j_cast_reg_292_pp0_iter7_reg;
reg   [63:0] j_cast_reg_292_pp0_iter8_reg;
wire   [63:0] zext_ln54_fu_254_p1;
reg   [63:0] zext_ln54_reg_310;
reg   [63:0] zext_ln54_reg_310_pp0_iter1_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter2_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter3_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter4_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter5_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter6_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter7_reg;
reg   [63:0] zext_ln54_reg_310_pp0_iter8_reg;
wire   [31:0] grp_fu_198_p2;
reg   [31:0] mul_reg_350;
wire   [31:0] grp_fu_204_p2;
reg   [31:0] mul1_reg_355;
wire   [31:0] grp_fu_210_p2;
reg   [31:0] mul2_reg_360;
wire   [31:0] grp_fu_216_p2;
reg   [31:0] mul3_reg_365;
wire   [31:0] grp_fu_174_p2;
reg   [31:0] temp_R_reg_380;
wire   [31:0] grp_fu_178_p2;
reg   [31:0] temp_I_reg_386;
reg   [31:0] X_R_load_1_reg_392;
reg   [31:0] X_I_load_1_reg_398;
wire   [31:0] grp_fu_182_p2;
reg   [31:0] sub_reg_404;
wire   [31:0] grp_fu_186_p2;
reg   [31:0] sub1_reg_409;
wire   [31:0] grp_fu_190_p2;
reg   [31:0] add_reg_414;
wire   [31:0] grp_fu_194_p2;
reg   [31:0] add1_reg_419;
wire    ap_block_pp0_stage0;
reg   [9:0] j_fu_44;
wire   [9:0] add_ln43_fu_236_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_j_1;
wire   [9:0] xor_ln53_fu_248_p2;
reg    grp_fu_174_ce;
reg    grp_fu_178_ce;
reg    grp_fu_182_ce;
reg    grp_fu_186_ce;
reg    grp_fu_190_ce;
reg    grp_fu_194_ce;
reg    grp_fu_198_ce;
reg    grp_fu_204_ce;
reg    grp_fu_210_ce;
reg    grp_fu_216_ce;
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
reg    ap_condition_269;
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

fft_streaming_fft_stage_1_W_real_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
W_real16_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_real16_address0),
    .ce0(W_real16_ce0),
    .q0(W_real16_q0)
);

fft_streaming_fft_stage_1_W_imag_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
W_imag8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_imag8_address0),
    .ce0(W_imag8_ce0),
    .q0(W_imag8_q0)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U134(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul_reg_350),
    .din1(mul1_reg_355),
    .ce(grp_fu_174_ce),
    .dout(grp_fu_174_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U135(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul2_reg_360),
    .din1(mul3_reg_365),
    .ce(grp_fu_178_ce),
    .dout(grp_fu_178_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U136(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_1_reg_392),
    .din1(temp_R_reg_380),
    .ce(grp_fu_182_ce),
    .dout(grp_fu_182_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U137(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_1_reg_398),
    .din1(temp_I_reg_386),
    .ce(grp_fu_186_ce),
    .dout(grp_fu_186_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U138(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_1_reg_392),
    .din1(temp_R_reg_380),
    .ce(grp_fu_190_ce),
    .dout(grp_fu_190_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U139(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_1_reg_398),
    .din1(temp_I_reg_386),
    .ce(grp_fu_194_ce),
    .dout(grp_fu_194_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U140(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_q1),
    .din1(W_real16_q0),
    .ce(grp_fu_198_ce),
    .dout(grp_fu_198_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U141(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_q1),
    .din1(W_imag8_q0),
    .ce(grp_fu_204_ce),
    .dout(grp_fu_204_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U142(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_q1),
    .din1(W_real16_q0),
    .ce(grp_fu_210_ce),
    .dout(grp_fu_210_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U143(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_q1),
    .din1(W_imag8_q0),
    .ce(grp_fu_216_ce),
    .dout(grp_fu_216_p2)
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
    if ((1'b1 == ap_condition_269)) begin
        if ((icmp_ln43_fu_230_p2 == 1'd0)) begin
            j_fu_44 <= add_ln43_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_44 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        X_I_load_1_reg_398 <= X_I_q0;
        X_R_load_1_reg_392 <= X_R_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_419 <= grp_fu_194_p2;
        add_reg_414 <= grp_fu_190_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        j_cast_reg_292_pp0_iter2_reg[9 : 0] <= j_cast_reg_292_pp0_iter1_reg[9 : 0];
        j_cast_reg_292_pp0_iter3_reg[9 : 0] <= j_cast_reg_292_pp0_iter2_reg[9 : 0];
        j_cast_reg_292_pp0_iter4_reg[9 : 0] <= j_cast_reg_292_pp0_iter3_reg[9 : 0];
        j_cast_reg_292_pp0_iter5_reg[9 : 0] <= j_cast_reg_292_pp0_iter4_reg[9 : 0];
        j_cast_reg_292_pp0_iter6_reg[9 : 0] <= j_cast_reg_292_pp0_iter5_reg[9 : 0];
        j_cast_reg_292_pp0_iter7_reg[9 : 0] <= j_cast_reg_292_pp0_iter6_reg[9 : 0];
        j_cast_reg_292_pp0_iter8_reg[9 : 0] <= j_cast_reg_292_pp0_iter7_reg[9 : 0];
        mul1_reg_355 <= grp_fu_204_p2;
        mul2_reg_360 <= grp_fu_210_p2;
        mul3_reg_365 <= grp_fu_216_p2;
        mul_reg_350 <= grp_fu_198_p2;
        sub1_reg_409 <= grp_fu_186_p2;
        sub_reg_404 <= grp_fu_182_p2;
        temp_I_reg_386 <= grp_fu_178_p2;
        temp_R_reg_380 <= grp_fu_174_p2;
        zext_ln54_reg_310_pp0_iter2_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter1_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter3_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter2_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter4_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter3_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter5_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter4_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter6_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter5_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter7_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter6_reg[9 : 0];
        zext_ln54_reg_310_pp0_iter8_reg[9 : 0] <= zext_ln54_reg_310_pp0_iter7_reg[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        j_cast_reg_292_pp0_iter1_reg[9 : 0] <= j_cast_reg_292[9 : 0];
        zext_ln54_reg_310_pp0_iter1_reg[9 : 0] <= zext_ln54_reg_310[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_230_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_cast_reg_292[9 : 0] <= j_cast_fu_242_p1[9 : 0];
        zext_ln54_reg_310[9 : 0] <= zext_ln54_fu_254_p1[9 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_I_ce0 = 1'b1;
    end else begin
        OUT_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_I_ce1 = 1'b1;
    end else begin
        OUT_I_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_I_we0 = 1'b1;
    end else begin
        OUT_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_I_we1 = 1'b1;
    end else begin
        OUT_I_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_R_ce0 = 1'b1;
    end else begin
        OUT_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_R_ce1 = 1'b1;
    end else begin
        OUT_R_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_R_we0 = 1'b1;
    end else begin
        OUT_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OUT_R_we1 = 1'b1;
    end else begin
        OUT_R_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_imag8_ce0 = 1'b1;
    end else begin
        W_imag8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_real16_ce0 = 1'b1;
    end else begin
        W_real16_ce0 = 1'b0;
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
    if (((icmp_ln43_fu_230_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_j_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_174_ce = 1'b1;
    end else begin
        grp_fu_174_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_178_ce = 1'b1;
    end else begin
        grp_fu_178_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_182_ce = 1'b1;
    end else begin
        grp_fu_182_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_186_ce = 1'b1;
    end else begin
        grp_fu_186_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_190_ce = 1'b1;
    end else begin
        grp_fu_190_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_194_ce = 1'b1;
    end else begin
        grp_fu_194_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_198_ce = 1'b1;
    end else begin
        grp_fu_198_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_204_ce = 1'b1;
    end else begin
        grp_fu_204_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_210_ce = 1'b1;
    end else begin
        grp_fu_210_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_216_ce = 1'b1;
    end else begin
        grp_fu_216_ce = 1'b0;
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

assign OUT_I_address0 = j_cast_reg_292_pp0_iter8_reg;

assign OUT_I_address1 = zext_ln54_reg_310_pp0_iter8_reg;

assign OUT_I_d0 = add1_reg_419;

assign OUT_I_d1 = sub1_reg_409;

assign OUT_R_address0 = j_cast_reg_292_pp0_iter8_reg;

assign OUT_R_address1 = zext_ln54_reg_310_pp0_iter8_reg;

assign OUT_R_d0 = add_reg_414;

assign OUT_R_d1 = sub_reg_404;

assign W_imag8_address0 = j_cast_fu_242_p1;

assign W_real16_address0 = j_cast_fu_242_p1;

assign X_I_address0 = j_cast_reg_292_pp0_iter3_reg;

assign X_I_address1 = zext_ln54_fu_254_p1;

assign X_R_address0 = j_cast_reg_292_pp0_iter3_reg;

assign X_R_address1 = zext_ln54_fu_254_p1;

assign add_ln43_fu_236_p2 = (ap_sig_allocacmp_j_1 + 10'd1);

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
    ap_condition_269 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln43_fu_230_p2 = ((ap_sig_allocacmp_j_1 == 10'd512) ? 1'b1 : 1'b0);

assign j_cast_fu_242_p1 = ap_sig_allocacmp_j_1;

assign xor_ln53_fu_248_p2 = (ap_sig_allocacmp_j_1 ^ 10'd512);

assign zext_ln54_fu_254_p1 = xor_ln53_fu_248_p2;

always @ (posedge ap_clk) begin
    j_cast_reg_292[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    j_cast_reg_292_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_310_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_streaming_fft_stage_9
