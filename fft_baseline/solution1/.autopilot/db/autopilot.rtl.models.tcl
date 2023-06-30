set SynModuleInfo {
  {SRCNAME bit_reverse MODELNAME bit_reverse RTLNAME fft_streaming_bit_reverse
    SUBMODULES {
      {MODELNAME fft_streaming_flow_control_loop_pipe RTLNAME fft_streaming_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_streaming_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME fft_stage MODELNAME fft_stage RTLNAME fft_streaming_fft_stage
    SUBMODULES {
      {MODELNAME fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 RTLNAME fft_streaming_fsub_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME fft_streaming_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME fft_streaming_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_flow_control_loop_delay_pipe RTLNAME fft_streaming_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_streaming_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME fft_stage.1 MODELNAME fft_stage_1 RTLNAME fft_streaming_fft_stage_1
    SUBMODULES {
      {MODELNAME fft_streaming_fft_stage_1_W_real_ROM_AUTO_1R RTLNAME fft_streaming_fft_stage_1_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_fft_stage_1_W_imag_ROM_AUTO_1R RTLNAME fft_streaming_fft_stage_1_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stage.2 MODELNAME fft_stage_2 RTLNAME fft_streaming_fft_stage_2}
  {SRCNAME fft_stage.3 MODELNAME fft_stage_3 RTLNAME fft_streaming_fft_stage_3}
  {SRCNAME fft_stage.4 MODELNAME fft_stage_4 RTLNAME fft_streaming_fft_stage_4}
  {SRCNAME fft_stage.5 MODELNAME fft_stage_5 RTLNAME fft_streaming_fft_stage_5}
  {SRCNAME fft_stage.6 MODELNAME fft_stage_6 RTLNAME fft_streaming_fft_stage_6}
  {SRCNAME fft_stage.7 MODELNAME fft_stage_7 RTLNAME fft_streaming_fft_stage_7}
  {SRCNAME fft_stage.8 MODELNAME fft_stage_8 RTLNAME fft_streaming_fft_stage_8}
  {SRCNAME fft_stage.9 MODELNAME fft_stage_9 RTLNAME fft_streaming_fft_stage_9}
  {SRCNAME fft_streaming MODELNAME fft_streaming RTLNAME fft_streaming IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_streaming_Stage_R_RAM_AUTO_1R1W_memcore RTLNAME fft_streaming_Stage_R_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_Stage_R_RAM_AUTO_1R1W RTLNAME fft_streaming_Stage_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_Stage_R_1_RAM_AUTO_1R1W_memcore RTLNAME fft_streaming_Stage_R_1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_streaming_Stage_R_1_RAM_AUTO_1R1W RTLNAME fft_streaming_Stage_R_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
