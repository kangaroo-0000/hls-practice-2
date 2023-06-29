#pragma once
typedef float DTYPE;
#define SIZE 1024
#define M 10

float cos_lut[SIZE / 2];
float sin_lut[SIZE / 2];
#pragma HLS ARRAY_RESHAPE variable = cos_lut block factor = 8
// #pragma HLS RESOURCE variable=cos_lut core=ROM_1P_LUTRAM
#pragma HLS ARRAY_RESHAPE variable = sin_lut block factor = 8
// #pragma HLS RESOURCE variable=sin_lut core=ROM_1P_LUTRAM

void fft_inplace(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]);
void bit_reverse(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]);
void fft_streaming(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]);
unsigned int reverse_bits(unsigned int input);
