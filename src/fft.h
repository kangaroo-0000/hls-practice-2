#pragma once
#include "hls_stream.h"
typedef float DTYPE;
#define SIZE 64
#define M 10

void fft_inplace(DTYPE real_input[SIZE], DTYPE imag_input[SIZE], DTYPE real_output[SIZE], DTYPE imag_output[SIZE], DTYPE sin_lut[SIZE / 2], DTYPE cos_lut[SIZE / 2]);
void fft_streaming(DTYPE real_input[SIZE], DTYPE imag_input[SIZE], DTYPE real_output[SIZE], DTYPE imag_output[SIZE]);

