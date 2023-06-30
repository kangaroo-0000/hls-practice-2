set moduleName fft_streaming
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fft_streaming}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ X_I int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ OUT_R int 32 regular {array 1024 { 0 0 } 0 1 }  }
	{ OUT_I int 32 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ X_R_address0 sc_out sc_lv 10 signal 0 } 
	{ X_R_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_d0 sc_out sc_lv 32 signal 0 } 
	{ X_R_q0 sc_in sc_lv 32 signal 0 } 
	{ X_R_we0 sc_out sc_logic 1 signal 0 } 
	{ X_R_address1 sc_out sc_lv 10 signal 0 } 
	{ X_R_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_d1 sc_out sc_lv 32 signal 0 } 
	{ X_R_q1 sc_in sc_lv 32 signal 0 } 
	{ X_R_we1 sc_out sc_logic 1 signal 0 } 
	{ X_I_address0 sc_out sc_lv 10 signal 1 } 
	{ X_I_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_I_d0 sc_out sc_lv 32 signal 1 } 
	{ X_I_q0 sc_in sc_lv 32 signal 1 } 
	{ X_I_we0 sc_out sc_logic 1 signal 1 } 
	{ X_I_address1 sc_out sc_lv 10 signal 1 } 
	{ X_I_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_I_d1 sc_out sc_lv 32 signal 1 } 
	{ X_I_q1 sc_in sc_lv 32 signal 1 } 
	{ X_I_we1 sc_out sc_logic 1 signal 1 } 
	{ OUT_R_address0 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_d0 sc_out sc_lv 32 signal 2 } 
	{ OUT_R_q0 sc_in sc_lv 32 signal 2 } 
	{ OUT_R_we0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_address1 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_ce1 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_d1 sc_out sc_lv 32 signal 2 } 
	{ OUT_R_q1 sc_in sc_lv 32 signal 2 } 
	{ OUT_R_we1 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_address0 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_ce0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_d0 sc_out sc_lv 32 signal 3 } 
	{ OUT_I_q0 sc_in sc_lv 32 signal 3 } 
	{ OUT_I_we0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_address1 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_ce1 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_d1 sc_out sc_lv 32 signal 3 } 
	{ OUT_I_q1 sc_in sc_lv 32 signal 3 } 
	{ OUT_I_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "X_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address0" }} , 
 	{ "name": "X_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce0" }} , 
 	{ "name": "X_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "d0" }} , 
 	{ "name": "X_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q0" }} , 
 	{ "name": "X_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "we0" }} , 
 	{ "name": "X_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address1" }} , 
 	{ "name": "X_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce1" }} , 
 	{ "name": "X_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "d1" }} , 
 	{ "name": "X_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q1" }} , 
 	{ "name": "X_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "we1" }} , 
 	{ "name": "X_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address0" }} , 
 	{ "name": "X_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce0" }} , 
 	{ "name": "X_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d0" }} , 
 	{ "name": "X_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q0" }} , 
 	{ "name": "X_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we0" }} , 
 	{ "name": "X_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address1" }} , 
 	{ "name": "X_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce1" }} , 
 	{ "name": "X_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d1" }} , 
 	{ "name": "X_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q1" }} , 
 	{ "name": "X_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we1" }} , 
 	{ "name": "OUT_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R", "role": "address0" }} , 
 	{ "name": "OUT_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R", "role": "ce0" }} , 
 	{ "name": "OUT_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R", "role": "d0" }} , 
 	{ "name": "OUT_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R", "role": "q0" }} , 
 	{ "name": "OUT_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R", "role": "we0" }} , 
 	{ "name": "OUT_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R", "role": "address1" }} , 
 	{ "name": "OUT_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R", "role": "ce1" }} , 
 	{ "name": "OUT_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R", "role": "d1" }} , 
 	{ "name": "OUT_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R", "role": "q1" }} , 
 	{ "name": "OUT_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R", "role": "we1" }} , 
 	{ "name": "OUT_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I", "role": "address0" }} , 
 	{ "name": "OUT_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I", "role": "ce0" }} , 
 	{ "name": "OUT_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I", "role": "d0" }} , 
 	{ "name": "OUT_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I", "role": "q0" }} , 
 	{ "name": "OUT_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I", "role": "we0" }} , 
 	{ "name": "OUT_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I", "role": "address1" }} , 
 	{ "name": "OUT_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I", "role": "ce1" }} , 
 	{ "name": "OUT_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I", "role": "d1" }} , 
 	{ "name": "OUT_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I", "role": "q1" }} , 
 	{ "name": "OUT_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "23", "33", "47", "61", "75", "89", "103", "117", "131", "145"],
		"CDFG" : "fft_streaming",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7280", "EstimateLatencyMax" : "7280",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "bit_reverse_U0"}],
		"OutputProcess" : [
			{"ID" : "145", "Name" : "fft_stage_9_U0"}],
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse_U0", "Port" : "X_R"}]},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse_U0", "Port" : "X_I"}]},
			{"Name" : "OUT_R", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "fft_stage_9_U0", "Port" : "OUT_R"}]},
			{"Name" : "OUT_I", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "fft_stage_9_U0", "Port" : "OUT_I"}]},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fft_stage_1_U0", "Port" : "W_real"}]},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "fft_stage_1_U0", "Port" : "W_imag"}]},
			{"Name" : "W_real9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "fft_stage_2_U0", "Port" : "W_real9"}]},
			{"Name" : "W_imag1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "fft_stage_2_U0", "Port" : "W_imag1"}]},
			{"Name" : "W_real10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "fft_stage_3_U0", "Port" : "W_real10"}]},
			{"Name" : "W_imag2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "fft_stage_3_U0", "Port" : "W_imag2"}]},
			{"Name" : "W_real11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "fft_stage_4_U0", "Port" : "W_real11"}]},
			{"Name" : "W_imag3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "fft_stage_4_U0", "Port" : "W_imag3"}]},
			{"Name" : "W_real12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "fft_stage_5_U0", "Port" : "W_real12"}]},
			{"Name" : "W_imag4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "fft_stage_5_U0", "Port" : "W_imag4"}]},
			{"Name" : "W_real13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "fft_stage_6_U0", "Port" : "W_real13"}]},
			{"Name" : "W_imag5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "fft_stage_6_U0", "Port" : "W_imag5"}]},
			{"Name" : "W_real14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "fft_stage_7_U0", "Port" : "W_real14"}]},
			{"Name" : "W_imag6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "fft_stage_7_U0", "Port" : "W_imag6"}]},
			{"Name" : "W_real15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "fft_stage_8_U0", "Port" : "W_real15"}]},
			{"Name" : "W_imag7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "fft_stage_8_U0", "Port" : "W_imag7"}]},
			{"Name" : "W_real16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "fft_stage_9_U0", "Port" : "W_real16"}]},
			{"Name" : "W_imag8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "fft_stage_9_U0", "Port" : "W_imag8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_3_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_4_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_5_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_6_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_7_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_8_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_9_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bit_reverse_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "bit_reverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "1"},
			{"Name" : "OUT_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "11"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bit_reverse_U0.flow_control_loop_pipe_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "fft_stage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "1"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "11"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "2"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "12"}],
		"Loop" : [
			{"Name" : "dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fsub_32ns_32ns_32_3_full_dsp_1_U5", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fadd_32ns_32ns_32_3_full_dsp_1_U6", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fsub_32ns_32ns_32_3_full_dsp_1_U7", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fsub_32ns_32ns_32_3_full_dsp_1_U8", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fadd_32ns_32ns_32_3_full_dsp_1_U9", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fadd_32ns_32ns_32_3_full_dsp_1_U10", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fmul_32ns_32ns_32_2_max_dsp_1_U11", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.fmul_32ns_32ns_32_2_max_dsp_1_U12", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_U0.flow_control_loop_delay_pipe_U", "Parent" : "23"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0", "Parent" : "0", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "fft_stage_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "2"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "12"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "3"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "13"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.W_real_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.W_imag_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fsub_32ns_32ns_32_3_full_dsp_1_U20", "Parent" : "33"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fadd_32ns_32ns_32_3_full_dsp_1_U21", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fsub_32ns_32ns_32_3_full_dsp_1_U22", "Parent" : "33"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fsub_32ns_32ns_32_3_full_dsp_1_U23", "Parent" : "33"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fadd_32ns_32ns_32_3_full_dsp_1_U24", "Parent" : "33"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fadd_32ns_32ns_32_3_full_dsp_1_U25", "Parent" : "33"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fmul_32ns_32ns_32_2_max_dsp_1_U26", "Parent" : "33"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fmul_32ns_32ns_32_2_max_dsp_1_U27", "Parent" : "33"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fmul_32ns_32ns_32_2_max_dsp_1_U28", "Parent" : "33"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.fmul_32ns_32ns_32_2_max_dsp_1_U29", "Parent" : "33"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_1_U0.flow_control_loop_delay_pipe_U", "Parent" : "33"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "fft_stage_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "3"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "13"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["61"], "DependentChan" : "4"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["61"], "DependentChan" : "14"},
			{"Name" : "W_real9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.W_real9_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.W_imag1_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fsub_32ns_32ns_32_3_full_dsp_1_U36", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fadd_32ns_32ns_32_3_full_dsp_1_U37", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fsub_32ns_32ns_32_3_full_dsp_1_U38", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fsub_32ns_32ns_32_3_full_dsp_1_U39", "Parent" : "47"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fadd_32ns_32ns_32_3_full_dsp_1_U40", "Parent" : "47"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fadd_32ns_32ns_32_3_full_dsp_1_U41", "Parent" : "47"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fmul_32ns_32ns_32_2_max_dsp_1_U42", "Parent" : "47"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fmul_32ns_32ns_32_2_max_dsp_1_U43", "Parent" : "47"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fmul_32ns_32ns_32_2_max_dsp_1_U44", "Parent" : "47"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.fmul_32ns_32ns_32_2_max_dsp_1_U45", "Parent" : "47"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_2_U0.flow_control_loop_delay_pipe_U", "Parent" : "47"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "fft_stage_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "4"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "14"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "5"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "15"},
			{"Name" : "W_real10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.W_real10_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.W_imag2_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fsub_32ns_32ns_32_3_full_dsp_1_U50", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fadd_32ns_32ns_32_3_full_dsp_1_U51", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fsub_32ns_32ns_32_3_full_dsp_1_U52", "Parent" : "61"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fsub_32ns_32ns_32_3_full_dsp_1_U53", "Parent" : "61"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fadd_32ns_32ns_32_3_full_dsp_1_U54", "Parent" : "61"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fadd_32ns_32ns_32_3_full_dsp_1_U55", "Parent" : "61"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fmul_32ns_32ns_32_2_max_dsp_1_U56", "Parent" : "61"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fmul_32ns_32ns_32_2_max_dsp_1_U57", "Parent" : "61"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fmul_32ns_32ns_32_2_max_dsp_1_U58", "Parent" : "61"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.fmul_32ns_32ns_32_2_max_dsp_1_U59", "Parent" : "61"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_3_U0.flow_control_loop_delay_pipe_U", "Parent" : "61"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0", "Parent" : "0", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "fft_stage_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["61"], "DependentChan" : "5"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["61"], "DependentChan" : "15"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["89"], "DependentChan" : "6"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["89"], "DependentChan" : "16"},
			{"Name" : "W_real11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.W_real11_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.W_imag3_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fsub_32ns_32ns_32_3_full_dsp_1_U64", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fadd_32ns_32ns_32_3_full_dsp_1_U65", "Parent" : "75"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fsub_32ns_32ns_32_3_full_dsp_1_U66", "Parent" : "75"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fsub_32ns_32ns_32_3_full_dsp_1_U67", "Parent" : "75"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fadd_32ns_32ns_32_3_full_dsp_1_U68", "Parent" : "75"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fadd_32ns_32ns_32_3_full_dsp_1_U69", "Parent" : "75"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fmul_32ns_32ns_32_2_max_dsp_1_U70", "Parent" : "75"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fmul_32ns_32ns_32_2_max_dsp_1_U71", "Parent" : "75"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fmul_32ns_32ns_32_2_max_dsp_1_U72", "Parent" : "75"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.fmul_32ns_32ns_32_2_max_dsp_1_U73", "Parent" : "75"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_4_U0.flow_control_loop_delay_pipe_U", "Parent" : "75"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "fft_stage_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["75"], "DependentChan" : "6"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["75"], "DependentChan" : "16"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["103"], "DependentChan" : "7"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["103"], "DependentChan" : "17"},
			{"Name" : "W_real12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.W_real12_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.W_imag4_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U78", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fadd_32ns_32ns_32_3_full_dsp_1_U79", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U80", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fsub_32ns_32ns_32_3_full_dsp_1_U81", "Parent" : "89"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fadd_32ns_32ns_32_3_full_dsp_1_U82", "Parent" : "89"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fadd_32ns_32ns_32_3_full_dsp_1_U83", "Parent" : "89"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fmul_32ns_32ns_32_2_max_dsp_1_U84", "Parent" : "89"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fmul_32ns_32ns_32_2_max_dsp_1_U85", "Parent" : "89"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fmul_32ns_32ns_32_2_max_dsp_1_U86", "Parent" : "89"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.fmul_32ns_32ns_32_2_max_dsp_1_U87", "Parent" : "89"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_5_U0.flow_control_loop_delay_pipe_U", "Parent" : "89"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "fft_stage_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "7"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["89"], "DependentChan" : "17"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["117"], "DependentChan" : "8"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["117"], "DependentChan" : "18"},
			{"Name" : "W_real13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.W_real13_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.W_imag5_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U92", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fadd_32ns_32ns_32_3_full_dsp_1_U93", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U94", "Parent" : "103"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fsub_32ns_32ns_32_3_full_dsp_1_U95", "Parent" : "103"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fadd_32ns_32ns_32_3_full_dsp_1_U96", "Parent" : "103"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fadd_32ns_32ns_32_3_full_dsp_1_U97", "Parent" : "103"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fmul_32ns_32ns_32_2_max_dsp_1_U98", "Parent" : "103"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fmul_32ns_32ns_32_2_max_dsp_1_U99", "Parent" : "103"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fmul_32ns_32ns_32_2_max_dsp_1_U100", "Parent" : "103"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.fmul_32ns_32ns_32_2_max_dsp_1_U101", "Parent" : "103"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_6_U0.flow_control_loop_delay_pipe_U", "Parent" : "103"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0", "Parent" : "0", "Child" : ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
		"CDFG" : "fft_stage_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "8"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "18"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["131"], "DependentChan" : "9"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["131"], "DependentChan" : "19"},
			{"Name" : "W_real14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.W_real14_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.W_imag6_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fsub_32ns_32ns_32_3_full_dsp_1_U106", "Parent" : "117"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fadd_32ns_32ns_32_3_full_dsp_1_U107", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fsub_32ns_32ns_32_3_full_dsp_1_U108", "Parent" : "117"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fsub_32ns_32ns_32_3_full_dsp_1_U109", "Parent" : "117"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fadd_32ns_32ns_32_3_full_dsp_1_U110", "Parent" : "117"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fadd_32ns_32ns_32_3_full_dsp_1_U111", "Parent" : "117"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U112", "Parent" : "117"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U113", "Parent" : "117"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U114", "Parent" : "117"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.fmul_32ns_32ns_32_2_max_dsp_1_U115", "Parent" : "117"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_7_U0.flow_control_loop_delay_pipe_U", "Parent" : "117"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0", "Parent" : "0", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144"],
		"CDFG" : "fft_stage_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["117"], "DependentChan" : "9"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["117"], "DependentChan" : "19"},
			{"Name" : "Out_R", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["145"], "DependentChan" : "10"},
			{"Name" : "Out_I", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["145"], "DependentChan" : "20"},
			{"Name" : "W_real15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop_dft_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.W_real15_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.W_imag7_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fsub_32ns_32ns_32_3_full_dsp_1_U120", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fadd_32ns_32ns_32_3_full_dsp_1_U121", "Parent" : "131"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fsub_32ns_32ns_32_3_full_dsp_1_U122", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fsub_32ns_32ns_32_3_full_dsp_1_U123", "Parent" : "131"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fadd_32ns_32ns_32_3_full_dsp_1_U124", "Parent" : "131"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fadd_32ns_32ns_32_3_full_dsp_1_U125", "Parent" : "131"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fmul_32ns_32ns_32_2_max_dsp_1_U126", "Parent" : "131"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fmul_32ns_32ns_32_2_max_dsp_1_U127", "Parent" : "131"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fmul_32ns_32ns_32_2_max_dsp_1_U128", "Parent" : "131"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.fmul_32ns_32ns_32_2_max_dsp_1_U129", "Parent" : "131"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_8_U0.flow_control_loop_delay_pipe_U", "Parent" : "131"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0", "Parent" : "0", "Child" : ["146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158"],
		"CDFG" : "fft_stage_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["131"], "DependentChan" : "10"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["131"], "DependentChan" : "20"},
			{"Name" : "OUT_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_real16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.W_real16_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.W_imag8_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fsub_32ns_32ns_32_3_full_dsp_1_U134", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fadd_32ns_32ns_32_3_full_dsp_1_U135", "Parent" : "145"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fsub_32ns_32ns_32_3_full_dsp_1_U136", "Parent" : "145"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fsub_32ns_32ns_32_3_full_dsp_1_U137", "Parent" : "145"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fadd_32ns_32ns_32_3_full_dsp_1_U138", "Parent" : "145"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fadd_32ns_32ns_32_3_full_dsp_1_U139", "Parent" : "145"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fmul_32ns_32ns_32_2_max_dsp_1_U140", "Parent" : "145"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fmul_32ns_32ns_32_2_max_dsp_1_U141", "Parent" : "145"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fmul_32ns_32ns_32_2_max_dsp_1_U142", "Parent" : "145"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.fmul_32ns_32ns_32_2_max_dsp_1_U143", "Parent" : "145"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_9_U0.flow_control_loop_delay_pipe_U", "Parent" : "145"}]}


set ArgLastReadFirstWriteLatency {
	fft_streaming {
		X_R {Type I LastRead 1 FirstWrite -1}
		X_I {Type I LastRead 1 FirstWrite -1}
		OUT_R {Type O LastRead -1 FirstWrite 9}
		OUT_I {Type O LastRead -1 FirstWrite 9}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}
		W_real9 {Type I LastRead -1 FirstWrite -1}
		W_imag1 {Type I LastRead -1 FirstWrite -1}
		W_real10 {Type I LastRead -1 FirstWrite -1}
		W_imag2 {Type I LastRead -1 FirstWrite -1}
		W_real11 {Type I LastRead -1 FirstWrite -1}
		W_imag3 {Type I LastRead -1 FirstWrite -1}
		W_real12 {Type I LastRead -1 FirstWrite -1}
		W_imag4 {Type I LastRead -1 FirstWrite -1}
		W_real13 {Type I LastRead -1 FirstWrite -1}
		W_imag5 {Type I LastRead -1 FirstWrite -1}
		W_real14 {Type I LastRead -1 FirstWrite -1}
		W_imag6 {Type I LastRead -1 FirstWrite -1}
		W_real15 {Type I LastRead -1 FirstWrite -1}
		W_imag7 {Type I LastRead -1 FirstWrite -1}
		W_real16 {Type I LastRead -1 FirstWrite -1}
		W_imag8 {Type I LastRead -1 FirstWrite -1}}
	bit_reverse {
		X_R {Type I LastRead 1 FirstWrite -1}
		X_I {Type I LastRead 1 FirstWrite -1}
		OUT_R {Type O LastRead -1 FirstWrite 1}
		OUT_I {Type O LastRead -1 FirstWrite 1}}
	fft_stage {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}}
	fft_stage_1 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stage_2 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real9 {Type I LastRead -1 FirstWrite -1}
		W_imag1 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_3 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real10 {Type I LastRead -1 FirstWrite -1}
		W_imag2 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_4 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real11 {Type I LastRead -1 FirstWrite -1}
		W_imag3 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_5 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real12 {Type I LastRead -1 FirstWrite -1}
		W_imag4 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_6 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real13 {Type I LastRead -1 FirstWrite -1}
		W_imag5 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_7 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real14 {Type I LastRead -1 FirstWrite -1}
		W_imag6 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_8 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		Out_R {Type O LastRead -1 FirstWrite 9}
		Out_I {Type O LastRead -1 FirstWrite 9}
		W_real15 {Type I LastRead -1 FirstWrite -1}
		W_imag7 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_9 {
		X_R {Type I LastRead 4 FirstWrite -1}
		X_I {Type I LastRead 4 FirstWrite -1}
		OUT_R {Type O LastRead -1 FirstWrite 9}
		OUT_I {Type O LastRead -1 FirstWrite 9}
		W_real16 {Type I LastRead -1 FirstWrite -1}
		W_imag8 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7280", "Max" : "7280"}
	, {"Name" : "Interval", "Min" : "2051", "Max" : "2051"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_R { ap_memory {  { X_R_address0 mem_address 1 10 }  { X_R_ce0 mem_ce 1 1 }  { X_R_d0 mem_din 1 32 }  { X_R_q0 mem_dout 0 32 }  { X_R_we0 mem_we 1 1 }  { X_R_address1 MemPortADDR2 1 10 }  { X_R_ce1 MemPortCE2 1 1 }  { X_R_d1 mem_din 1 32 }  { X_R_q1 MemPortDOUT2 0 32 }  { X_R_we1 mem_we 1 1 } } }
	X_I { ap_memory {  { X_I_address0 mem_address 1 10 }  { X_I_ce0 mem_ce 1 1 }  { X_I_d0 mem_din 1 32 }  { X_I_q0 mem_dout 0 32 }  { X_I_we0 mem_we 1 1 }  { X_I_address1 MemPortADDR2 1 10 }  { X_I_ce1 MemPortCE2 1 1 }  { X_I_d1 mem_din 1 32 }  { X_I_q1 MemPortDOUT2 0 32 }  { X_I_we1 mem_we 1 1 } } }
	OUT_R { ap_memory {  { OUT_R_address0 mem_address 1 10 }  { OUT_R_ce0 mem_ce 1 1 }  { OUT_R_d0 mem_din 1 32 }  { OUT_R_q0 mem_dout 0 32 }  { OUT_R_we0 mem_we 1 1 }  { OUT_R_address1 MemPortADDR2 1 10 }  { OUT_R_ce1 MemPortCE2 1 1 }  { OUT_R_d1 MemPortDIN2 1 32 }  { OUT_R_q1 mem_dout 0 32 }  { OUT_R_we1 MemPortWE2 1 1 } } }
	OUT_I { ap_memory {  { OUT_I_address0 mem_address 1 10 }  { OUT_I_ce0 mem_ce 1 1 }  { OUT_I_d0 mem_din 1 32 }  { OUT_I_q0 mem_dout 0 32 }  { OUT_I_we0 mem_we 1 1 }  { OUT_I_address1 MemPortADDR2 1 10 }  { OUT_I_ce1 MemPortCE2 1 1 }  { OUT_I_d1 MemPortDIN2 1 32 }  { OUT_I_q1 mem_dout 0 32 }  { OUT_I_we1 MemPortWE2 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
