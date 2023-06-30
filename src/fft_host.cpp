#include <fstream>
#include <iostream>
#include "hls_stream.h"
#include "fft.h"

int main() {
  hls::stream<DTYPE> real_in_stream("real_in_stream"), imag_in_stream("imag_in_stream");
  hls::stream<DTYPE> real_out_stream("real_out_stream"), imag_out_stream("imag_out_stream");
  std::cout << "in main" << std::endl;
  // Generate the inputs and write them to the streams
  for (int i = 0; i < SIZE; i++) {
    real_in_stream.write(i);
    imag_in_stream.write(0.0);
  }

  // Perform FFT
  fft_streaming(real_in_stream, imag_in_stream, real_out_stream, imag_out_stream);

  // Print FFT output
  std::ofstream output_file("out.fft.dat");
  for (int i = 0; i < SIZE; i++) {
    DTYPE real_output = real_out_stream.read();
    DTYPE imag_output = imag_out_stream.read();
    output_file << i << "\t" << real_output << "\t" << imag_output << "\n";
  }
  output_file.close();

  // Compare the output with the golden output
  std::ifstream golden_file("out.fft.gold.dat");
  DTYPE average_error = 0.0;
  DTYPE max_error = 0.0;
  for (int i = 0; i < SIZE; i++) {
    DTYPE golden_real, golden_imag;
    int index;
    golden_file >> index >> golden_real >> golden_imag;
    DTYPE real_output = real_out_stream.read();
    DTYPE imag_output = imag_out_stream.read();
    DTYPE current_error = std::abs(golden_real - real_output) +
                          std::abs(golden_imag - imag_output);
    average_error += current_error;
    if (current_error > max_error) {
      max_error = current_error;
      std::cout << "Max Error@" << i << ": " << max_error << "\n";
    }
  }
  golden_file.close();

  average_error /= SIZE;
  std::cout << "Average Error: " << average_error << "\n";
  if (average_error > 0.05 || max_error > 2.0) {
    std::cout << "*******************************************\n";
    std::cout << "FAIL: Output DOES NOT match the golden output\n";
    std::cout << "*******************************************\n";
    return 1;
  } else {
    std::cout << "*******************************************\n";
    std::cout << "PASS: The output matches the golden output!\n";
    std::cout << "*******************************************\n";
    return 0;
  }
}
