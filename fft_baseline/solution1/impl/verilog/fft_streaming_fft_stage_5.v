// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_streaming_fft_stage_5 (
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
wire   [0:0] icmp_ln43_fu_277_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] W_real12_address0;
reg    W_real12_ce0;
wire   [31:0] W_real12_q0;
wire   [8:0] W_imag4_address0;
reg    W_imag4_ce0;
wire   [31:0] W_imag4_q0;
wire   [9:0] or_ln_fu_350_p3;
reg   [9:0] or_ln_reg_431;
reg   [9:0] or_ln_reg_431_pp0_iter1_reg;
reg   [9:0] or_ln_reg_431_pp0_iter2_reg;
reg   [9:0] or_ln_reg_431_pp0_iter3_reg;
wire   [63:0] zext_ln54_fu_364_p1;
reg   [63:0] zext_ln54_reg_436;
reg   [63:0] zext_ln54_reg_436_pp0_iter1_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter2_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter3_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter4_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter5_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter6_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter7_reg;
reg   [63:0] zext_ln54_reg_436_pp0_iter8_reg;
wire   [31:0] grp_fu_220_p2;
reg   [31:0] mul4_reg_476;
wire   [31:0] grp_fu_226_p2;
reg   [31:0] mul_reg_481;
wire   [31:0] grp_fu_232_p2;
reg   [31:0] mul5_reg_486;
wire   [31:0] grp_fu_238_p2;
reg   [31:0] mul6_reg_491;
wire   [63:0] zext_ln51_fu_391_p1;
reg   [63:0] zext_ln51_reg_496;
reg   [63:0] zext_ln51_reg_496_pp0_iter5_reg;
reg   [63:0] zext_ln51_reg_496_pp0_iter6_reg;
reg   [63:0] zext_ln51_reg_496_pp0_iter7_reg;
reg   [63:0] zext_ln51_reg_496_pp0_iter8_reg;
wire   [31:0] grp_fu_196_p2;
reg   [31:0] temp_R_reg_512;
wire   [31:0] grp_fu_200_p2;
reg   [31:0] temp_I_reg_518;
reg   [31:0] X_R_load_5_reg_524;
reg   [31:0] X_I_load_5_reg_530;
wire   [31:0] grp_fu_204_p2;
reg   [31:0] sub_reg_536;
wire   [31:0] grp_fu_208_p2;
reg   [31:0] sub5_reg_541;
wire   [31:0] grp_fu_212_p2;
reg   [31:0] add_reg_546;
wire   [31:0] grp_fu_216_p2;
reg   [31:0] add5_reg_551;
wire   [63:0] zext_ln43_fu_332_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] t_fu_58;
wire   [4:0] add_ln46_fu_370_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_t_load;
reg   [5:0] j_fu_62;
wire   [5:0] select_ln43_9_fu_338_p3;
reg   [5:0] ap_sig_allocacmp_j_4;
reg   [9:0] indvar_flatten_fu_66;
wire   [9:0] add_ln43_fu_283_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [4:0] empty_fu_265_p1;
wire   [0:0] icmp_ln46_fu_292_p2;
wire   [5:0] add_ln43_4_fu_306_p2;
wire   [4:0] empty_15_fu_312_p1;
wire   [8:0] p_mid1_fu_316_p3;
wire   [8:0] tmp_s_fu_269_p3;
wire   [8:0] select_ln43_8_fu_324_p3;
wire   [4:0] select_ln43_fu_298_p3;
wire   [3:0] trunc_ln47_fu_346_p1;
wire   [9:0] add_ln53_fu_358_p2;
reg    grp_fu_196_ce;
reg    grp_fu_200_ce;
reg    grp_fu_204_ce;
reg    grp_fu_208_ce;
reg    grp_fu_212_ce;
reg    grp_fu_216_ce;
reg    grp_fu_220_ce;
reg    grp_fu_226_ce;
reg    grp_fu_232_ce;
reg    grp_fu_238_ce;
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
reg    ap_condition_272;
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
W_real12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_real12_address0),
    .ce0(W_real12_ce0),
    .q0(W_real12_q0)
);

fft_streaming_fft_stage_1_W_imag_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
W_imag4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_imag4_address0),
    .ce0(W_imag4_ce0),
    .q0(W_imag4_q0)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U78(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul4_reg_476),
    .din1(mul_reg_481),
    .ce(grp_fu_196_ce),
    .dout(grp_fu_196_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U79(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul5_reg_486),
    .din1(mul6_reg_491),
    .ce(grp_fu_200_ce),
    .dout(grp_fu_200_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U80(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_5_reg_524),
    .din1(temp_R_reg_512),
    .ce(grp_fu_204_ce),
    .dout(grp_fu_204_p2)
);

fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_3_full_dsp_1_U81(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_5_reg_530),
    .din1(temp_I_reg_518),
    .ce(grp_fu_208_ce),
    .dout(grp_fu_208_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U82(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_load_5_reg_524),
    .din1(temp_R_reg_512),
    .ce(grp_fu_212_ce),
    .dout(grp_fu_212_p2)
);

fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U83(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_load_5_reg_530),
    .din1(temp_I_reg_518),
    .ce(grp_fu_216_ce),
    .dout(grp_fu_216_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U84(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_q1),
    .din1(W_real12_q0),
    .ce(grp_fu_220_ce),
    .dout(grp_fu_220_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U85(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_q1),
    .din1(W_imag4_q0),
    .ce(grp_fu_226_ce),
    .dout(grp_fu_226_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U86(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_I_q1),
    .din1(W_real12_q0),
    .ce(grp_fu_232_ce),
    .dout(grp_fu_232_p2)
);

fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U87(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(X_R_q1),
    .din1(W_imag4_q0),
    .ce(grp_fu_238_ce),
    .dout(grp_fu_238_p2)
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
    if ((1'b1 == ap_condition_272)) begin
        if ((icmp_ln43_fu_277_p2 == 1'd0)) begin
            indvar_flatten_fu_66 <= add_ln43_fu_283_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_66 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_272)) begin
        if ((icmp_ln43_fu_277_p2 == 1'd0)) begin
            j_fu_62 <= select_ln43_9_fu_338_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_272)) begin
        if ((icmp_ln43_fu_277_p2 == 1'd0)) begin
            t_fu_58 <= add_ln46_fu_370_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            t_fu_58 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        X_I_load_5_reg_530 <= X_I_q0;
        X_R_load_5_reg_524 <= X_R_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add5_reg_551 <= grp_fu_216_p2;
        add_reg_546 <= grp_fu_212_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        mul4_reg_476 <= grp_fu_220_p2;
        mul5_reg_486 <= grp_fu_232_p2;
        mul6_reg_491 <= grp_fu_238_p2;
        mul_reg_481 <= grp_fu_226_p2;
        or_ln_reg_431_pp0_iter2_reg <= or_ln_reg_431_pp0_iter1_reg;
        or_ln_reg_431_pp0_iter3_reg <= or_ln_reg_431_pp0_iter2_reg;
        sub5_reg_541 <= grp_fu_208_p2;
        sub_reg_536 <= grp_fu_204_p2;
        temp_I_reg_518 <= grp_fu_200_p2;
        temp_R_reg_512 <= grp_fu_196_p2;
        zext_ln51_reg_496[9 : 0] <= zext_ln51_fu_391_p1[9 : 0];
        zext_ln51_reg_496_pp0_iter5_reg[9 : 0] <= zext_ln51_reg_496[9 : 0];
        zext_ln51_reg_496_pp0_iter6_reg[9 : 0] <= zext_ln51_reg_496_pp0_iter5_reg[9 : 0];
        zext_ln51_reg_496_pp0_iter7_reg[9 : 0] <= zext_ln51_reg_496_pp0_iter6_reg[9 : 0];
        zext_ln51_reg_496_pp0_iter8_reg[9 : 0] <= zext_ln51_reg_496_pp0_iter7_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter2_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter1_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter3_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter2_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter4_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter3_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter5_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter4_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter6_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter5_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter7_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter6_reg[9 : 0];
        zext_ln54_reg_436_pp0_iter8_reg[9 : 0] <= zext_ln54_reg_436_pp0_iter7_reg[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        or_ln_reg_431_pp0_iter1_reg <= or_ln_reg_431;
        zext_ln54_reg_436_pp0_iter1_reg[9 : 0] <= zext_ln54_reg_436[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_277_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln_reg_431 <= or_ln_fu_350_p3;
        zext_ln54_reg_436[9 : 0] <= zext_ln54_fu_364_p1[9 : 0];
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_imag4_ce0 = 1'b1;
    end else begin
        W_imag4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_real12_ce0 = 1'b1;
    end else begin
        W_real12_ce0 = 1'b0;
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
    if (((icmp_ln43_fu_277_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_4 = 6'd0;
    end else begin
        ap_sig_allocacmp_j_4 = j_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_t_load = 5'd0;
    end else begin
        ap_sig_allocacmp_t_load = t_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_196_ce = 1'b1;
    end else begin
        grp_fu_196_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_200_ce = 1'b1;
    end else begin
        grp_fu_200_ce = 1'b0;
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
        grp_fu_208_ce = 1'b1;
    end else begin
        grp_fu_208_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_212_ce = 1'b1;
    end else begin
        grp_fu_212_ce = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_ce = 1'b1;
    end else begin
        grp_fu_220_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_226_ce = 1'b1;
    end else begin
        grp_fu_226_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_232_ce = 1'b1;
    end else begin
        grp_fu_232_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_238_ce = 1'b1;
    end else begin
        grp_fu_238_ce = 1'b0;
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

assign Out_I_address0 = zext_ln51_reg_496_pp0_iter8_reg;

assign Out_I_address1 = zext_ln54_reg_436_pp0_iter8_reg;

assign Out_I_d0 = add5_reg_551;

assign Out_I_d1 = sub5_reg_541;

assign Out_R_address0 = zext_ln51_reg_496_pp0_iter8_reg;

assign Out_R_address1 = zext_ln54_reg_436_pp0_iter8_reg;

assign Out_R_d0 = add_reg_546;

assign Out_R_d1 = sub_reg_536;

assign W_imag4_address0 = zext_ln43_fu_332_p1;

assign W_real12_address0 = zext_ln43_fu_332_p1;

assign X_I_address0 = zext_ln51_fu_391_p1;

assign X_I_address1 = zext_ln54_fu_364_p1;

assign X_R_address0 = zext_ln51_fu_391_p1;

assign X_R_address1 = zext_ln54_fu_364_p1;

assign add_ln43_4_fu_306_p2 = (ap_sig_allocacmp_j_4 + 6'd1);

assign add_ln43_fu_283_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);

assign add_ln46_fu_370_p2 = (select_ln43_fu_298_p3 + 5'd1);

assign add_ln53_fu_358_p2 = (or_ln_fu_350_p3 + 10'd32);

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
    ap_condition_272 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_15_fu_312_p1 = add_ln43_4_fu_306_p2[4:0];

assign empty_fu_265_p1 = ap_sig_allocacmp_j_4[4:0];

assign icmp_ln43_fu_277_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln46_fu_292_p2 = ((ap_sig_allocacmp_t_load == 5'd16) ? 1'b1 : 1'b0);

assign or_ln_fu_350_p3 = {{trunc_ln47_fu_346_p1}, {select_ln43_9_fu_338_p3}};

assign p_mid1_fu_316_p3 = {{empty_15_fu_312_p1}, {4'd0}};

assign select_ln43_8_fu_324_p3 = ((icmp_ln46_fu_292_p2[0:0] == 1'b1) ? p_mid1_fu_316_p3 : tmp_s_fu_269_p3);

assign select_ln43_9_fu_338_p3 = ((icmp_ln46_fu_292_p2[0:0] == 1'b1) ? add_ln43_4_fu_306_p2 : ap_sig_allocacmp_j_4);

assign select_ln43_fu_298_p3 = ((icmp_ln46_fu_292_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_t_load);

assign tmp_s_fu_269_p3 = {{empty_fu_265_p1}, {4'd0}};

assign trunc_ln47_fu_346_p1 = select_ln43_fu_298_p3[3:0];

assign zext_ln43_fu_332_p1 = select_ln43_8_fu_324_p3;

assign zext_ln51_fu_391_p1 = or_ln_reg_431_pp0_iter3_reg;

assign zext_ln54_fu_364_p1 = add_ln53_fu_358_p2;

always @ (posedge ap_clk) begin
    zext_ln54_reg_436[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln54_reg_436_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln51_reg_496[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln51_reg_496_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln51_reg_496_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln51_reg_496_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln51_reg_496_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_streaming_fft_stage_5
