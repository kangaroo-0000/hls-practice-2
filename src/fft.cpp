#include "fft.h"

#include "math.h"

void init_twiddle_factors() {
  for (int i = 0; i < SIZE >> 1; i++) {
#pragma HLS PIPELINE II = 1
    cos_lut[i] = cosf(-2.0 * M_PI * i / SIZE);
    sin_lut[i] = sinf(-2.0 * M_PI * i / SIZE);
  }
}

// #pragma HLS INLINE
unsigned int reverse_bits(unsigned int input) {
  int rev = 0;
  for (int i = 0; i < M; i++) {
    rev = (rev << 1) | (input & 1);
    input = input >> 1;
  }
  return rev;
}

void bit_reverse(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]) {
  unsigned int reversed;
  DTYPE temp;

  for (unsigned int i = 0; i < SIZE; i++) {
    reversed = reverse_bits(i);
    if (i < reversed) {
      // Swap the real values
      temp = real_input[i];
      real_input[i] = real_input[reversed];
      real_input[reversed] = temp;

      // Swap the imaginary values
      temp = imag_input[i];
      imag_input[i] = imag_input[reversed];
      imag_input[reversed] = temp;
    }
  }
}

void fft_inplace(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]) {
  // In-place radix-2 FFT
  for (int stage = 1; stage <= log2(SIZE); stage++) {
    int fft_points = 1 << stage;
    int half_fft_points = fft_points >> 1;
    DTYPE wr = 1.0, wi = 0.0;

    // Precompute twiddle factors
    DTYPE wmr = cos_lut[half_fft_points], wmi = sin_lut[half_fft_points];
#pragma HLS unroll
    for (int j = 0; j < half_fft_points; j++) {
      for (int k = j; k < SIZE; k += fft_points) {
        DTYPE real_temp = real_input[k + half_fft_points] * wr -
                          imag_input[k + half_fft_points] * wi;
        DTYPE imag_temp = real_input[k + half_fft_points] * wi +
                          imag_input[k + half_fft_points] * wr;
        real_input[k + half_fft_points] = real_input[k] - real_temp;
        imag_input[k + half_fft_points] = imag_input[k] - imag_temp;
        real_input[k] += real_temp;
        imag_input[k] += imag_temp;
      }
      // Adjust twiddle factors
      DTYPE t = wr;
      wr = t * wmr - wi * wmi;
      wi = t * wmi + wi * wmr;
    }
  }
}

void fft_streaming(DTYPE real_input[SIZE], DTYPE imag_input[SIZE]) {
  init_twiddle_factors();
#pragma HLS dataflow
  bit_reverse(real_input, imag_input);
  fft_inplace(real_input, imag_input);
}