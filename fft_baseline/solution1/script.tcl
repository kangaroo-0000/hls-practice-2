############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft_baseline
set_top fft_streaming
add_files fft_baseline/fft.cpp
add_files fft_baseline/fft.h
add_files fft_baseline/fft_top.cpp
add_files fft_baseline/tw_i.h
add_files fft_baseline/tw_r.h
add_files -tb fft_baseline/fft_top.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./fft_baseline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
