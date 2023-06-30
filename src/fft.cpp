#include "fft.h"

#include "math.h"
#include "hls_stream.h"

void init_twiddle_factors(DTYPE cos_lut[SIZE / 2], DTYPE sin_lut[SIZE / 2]) {
#pragma HLS ARRAY_RESHAPE variable = cos_lut block factor = 8
#pragma HLS ARRAY_RESHAPE variable = sin_lut block factor = 8
  for (int i = 0; i < SIZE >> 1; i++) {
#pragma HLS PIPELINE II = 1
    cos_lut[i] = cosf(-2.0 * M_PI * i / SIZE);
    sin_lut[i] = sinf(-2.0 * M_PI * i / SIZE);
  }
}


inline unsigned int reverse_bits(unsigned int input) {
  int rev = 0;
  for (int i = 0; i < M; i++) {
    rev = (rev << 1) | (input & 1);
    input = input >> 1;
  }
  return rev;
}

void bit_reverse(hls::stream<DTYPE>& real_input_stream, hls::stream<DTYPE>& imag_input_stream, hls::stream<DTYPE>& real_output_stream, hls::stream<DTYPE>& imag_output_stream) {
  DTYPE real_temp[SIZE];
  DTYPE imag_temp[SIZE];

  for (unsigned int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE
    unsigned int reversed = reverse_bits(i);
    real_temp[i] = real_input_stream.read();
    imag_temp[i] = imag_input_stream.read();
  }

  for (unsigned int i = 0; i < SIZE; i++) {
    unsigned int reversed = reverse_bits(i);
    if (i < reversed) {
      real_output_stream.write(real_temp[reversed]);
      imag_output_stream.write(imag_temp[reversed]);
      real_output_stream.write(real_temp[i]);
      imag_output_stream.write(imag_temp[i]);
    } else {
      real_output_stream.write(real_temp[i]);
      imag_output_stream.write(imag_temp[i]);
    }
  }
}



void fft_inplace(hls::stream<DTYPE>& real_input_stream, hls::stream<DTYPE>& imag_input_stream, hls::stream<DTYPE>& real_output_stream, hls::stream<DTYPE>& imag_output_stream, DTYPE sin_lut[SIZE / 2], DTYPE cos_lut[SIZE / 2]) {
  DTYPE real_tmp[SIZE];
  DTYPE imag_tmp[SIZE];

  // In-place radix-2 FFT
  for (int stage = 1; stage <= log2(SIZE); stage++) {
	int fft_points = 1 << stage;
	int half_fft_points = fft_points >> 1;
	DTYPE wr = 1.0, wi = 0.0;
	DTYPE wmr = cos_lut[half_fft_points], wmi = sin_lut[half_fft_points];
	for (int j = 0; j < half_fft_points; j++) {
	  for (int k = j; k < SIZE; k += fft_points) {
#pragma HLS PIPELINE II = 3
		DTYPE real_temp = real_input_stream.read() * wr - imag_input_stream.read() * wi;
		DTYPE imag_temp = real_input_stream.read() * wi + imag_input_stream.read() * wr;

		DTYPE temp_real = real_input_stream.read();
		DTYPE temp_imag = imag_input_stream.read();

		real_tmp[k + half_fft_points] = temp_real - real_temp;
		imag_tmp[k + half_fft_points] = temp_imag - imag_temp;
		real_tmp[k] = temp_real + real_temp;
		imag_tmp[k] = temp_imag + imag_temp;
	  }

	  DTYPE t = wr;
	  wr = t * wmr - wi * wmi;
	  wi = t * wmi + wi * wmr;
	}

	// Write the results to the output streams
	for (int i = 0; i < SIZE; i++) {
#pragma HLS UNROLL
	  real_output_stream.write(real_tmp[i]);
	  imag_output_stream.write(imag_tmp[i]);
	}
  }
}



void fft_streaming(hls::stream<DTYPE> &real_in_stream, hls::stream<DTYPE> &imag_in_stream, hls::stream<DTYPE> &real_out_stream, hls::stream<DTYPE> &imag_out_stream) {
  DTYPE cos_lut[SIZE / 2];
  DTYPE sin_lut[SIZE / 2];
  init_twiddle_factors(cos_lut, sin_lut);
#pragma HLS dataflow
  hls::stream<DTYPE> real_bit_rev_stream("real_bit_rev_stream"), imag_bit_rev_stream("imag_bit_rev_stream");
  bit_reverse(real_in_stream, imag_in_stream, real_bit_rev_stream, imag_bit_rev_stream);
  fft_inplace(real_bit_rev_stream, imag_bit_rev_stream, real_out_stream, imag_out_stream, sin_lut, cos_lut);
}
