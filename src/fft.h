#pragma once
#include "hls_stream.h"
typedef float DTYPE;
#define SIZE 1024
#define M 10

void bit_reverse(hls::stream<DTYPE>& real_input_stream, hls::stream<DTYPE>& imag_input_stream, hls::stream<DTYPE>& real_output_stream, hls::stream<DTYPE>& imag_output_stream);
void fft_streaming(hls::stream<DTYPE> &real_in_stream, hls::stream<DTYPE> &imag_in_stream, hls::stream<DTYPE> &real_out_stream, hls::stream<DTYPE> &imag_out_stream);
void fft_inplace(hls::stream<DTYPE>& real_input_stream, hls::stream<DTYPE>& imag_input_stream, hls::stream<DTYPE>& real_output_stream, hls::stream<DTYPE>& imag_output_stream, DTYPE sin_lut[SIZE / 2], DTYPE cos_lut[SIZE / 2]);
unsigned int reverse_bits(unsigned int input);
void init_twiddle_factors(DTYPE cos_lut[SIZE/2], DTYPE sin_lut[SIZE/2]);
