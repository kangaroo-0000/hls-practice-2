#include "fft.h"

#include "math.h"
#include "hls_stream.h"
#include <iostream>
void init_twiddle_factors(DTYPE cos_lut[SIZE / 2], DTYPE sin_lut[SIZE / 2]) {
#pragma HLS ARRAY_RESHAPE variable = cos_lut block factor = 8
#pragma HLS ARRAY_RESHAPE variable = sin_lut block factor = 8
  for (int i = 0; i < SIZE >> 1; i++) {
#pragma HLS PIPELINE II = 1
    cos_lut[i] = cosf(-2.0 * M_PI * i / SIZE);
    sin_lut[i] = sinf(-2.0 * M_PI * i / SIZE);
  }
}


unsigned int reverse_bits(unsigned int input) {
  int rev = 0;
  for (int i = 0; i < M; i++) {
    rev = (rev << 1) | (input & 1);
    input = input >> 1;
  }
  return rev;
}

void bit_reverse(DTYPE real_input[SIZE], DTYPE imag_input[SIZE], DTYPE real_output[SIZE], DTYPE imag_output[SIZE]) {
  unsigned int reversed;
  DTYPE temp;

  for (int i = 0; i < SIZE; i++) {
    reversed = reverse_bits(i); // Find the bit reversed index
    if (i <= reversed) {
      // Swap the real values
      temp = real_input[i];
      real_output[i] = real_input[reversed];
      real_output[reversed] = temp;

      // Swap the imaginary values
      temp = imag_input[i];
      imag_output[i] = imag_input[reversed];
      imag_output[reversed] = temp;
    }
  }
}


void fft_inplace(DTYPE real_input[SIZE], DTYPE imag_input[SIZE], DTYPE real_output[SIZE], DTYPE imag_output[SIZE], DTYPE sin_lut[SIZE / 2], DTYPE cos_lut[SIZE / 2]) {
  DTYPE real_tmp[SIZE];
  DTYPE imag_tmp[SIZE];
#pragma HLS ARRAY_PARTITION variable=real_input type=complete
#pragma HLS ARRAY_PARTITION variable=imag_input type=complete

  // std::cout << "Inside fft_inplace function" <<std::endl;
  // In-place radix-2 FFT
  for (int stage = 1; stage <= log2(SIZE); stage++) {
    int fft_points = 1 << stage;
    int half_fft_points = fft_points >> 1;

    for (int j = 0; j < SIZE; j += fft_points) {
#pragma HLS loop_tripcount min=1 max=SIZE
      DTYPE wr = 1.0, wi = 0.0;
      DTYPE wmr = cos_lut[SIZE/(2*fft_points)], wmi = -sin_lut[SIZE/(2*fft_points)];

      for (int k = j; k < j + half_fft_points; k++) {
#pragma HLS UNROLL
#pragma HLS loop_tripcount min=1 max=SIZE/2
        DTYPE real_temp = real_input[k + half_fft_points] * wr - imag_input[k + half_fft_points] * wi;
        DTYPE imag_temp = real_input[k + half_fft_points] * wi + imag_input[k + half_fft_points] * wr;
        real_tmp[k + half_fft_points] = real_input[k] - real_temp;
        imag_tmp[k + half_fft_points] = imag_input[k] - imag_temp;
        real_tmp[k] = real_input[k] + real_temp;
        imag_tmp[k] = imag_input[k] + imag_temp;

        // Update the twiddle factor for next computation
        DTYPE t = wr;
        wr = t * wmr - wi * wmi;
        wi = t * wmi + wi * wmr;
      }
    }

    // Copy the results from temporary arrays back into the output arrays
    for (int i = 0; i < SIZE; i++) {
#pragma HLS UNROLL
      real_output[i] = real_tmp[i];
      imag_output[i] = imag_tmp[i];
    }
  }
//  for (int i = 0; i < SIZE; i++) {
//  	std::cout << "real output " << i << " is: " << real_output[i] << ". Imaginary output " << i << " is: " << imag_output[i] << std::endl;
//  }
}


void fft_streaming(DTYPE real_input[SIZE], DTYPE imag_input[SIZE], DTYPE real_output[SIZE], DTYPE imag_output[SIZE]) {
  DTYPE cos_lut[SIZE / 2];
  DTYPE sin_lut[SIZE / 2];
#pragma HLS BIND_STORAGE variable=cos_lut type=ram_1wnr
#pragma HLS BIND_STORAGE variable=sin_lut type=ram_1wnr

  init_twiddle_factors(cos_lut, sin_lut);
  DTYPE real_bit_rev[SIZE];
  DTYPE imag_bit_rev[SIZE];
#pragma HLS ARRAY_PARTITION variable=real_bit_rev complete
#pragma HLS ARRAY_PARTITION variable=imag_bit_rev complete

#pragma HLS dataflow
  bit_reverse(real_input, imag_input, real_bit_rev, imag_bit_rev);
  fft_inplace(real_bit_rev, imag_bit_rev, real_output, imag_output, sin_lut, cos_lut);
}
