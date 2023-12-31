#include <fstream>
#include <iostream>
#include "fft.h"

int main() {
  DTYPE real_input[SIZE], imag_input[SIZE];
  DTYPE real_output[SIZE], imag_output[SIZE];

  // Generate the inputs
  for (int i = 0; i < SIZE; i++) {
    real_input[i] = i;
    imag_input[i] = 0.0;
  }

  fft_streaming(real_input, imag_input, real_output, imag_output);
  std::cout << "FFT is successful." << std::endl;
  std::cout << real_output[10] << imag_output[0] << std::endl;
  // Print FFT output
  std::ofstream output_file("out.fft.dat");
  for (int i = 0; i < SIZE; i++) {
	std::cout << "real output " << i << "is: " << real_output[i] << ". Imaginary output " << i << "is: " << imag_output[i] << std::endl;
    output_file << i << "\t" << real_output[i] << "\t" << imag_output[i] << "\n";
  }
  output_file.close();
  std::cout << "Printing output is successful." << std::endl;

  // Please include your own golden file
  std::ifstream golden_file("out.fft.gold.dat");
  DTYPE average_error = 0.0;
  DTYPE max_error = 0.0;
  for (int i = 0; i < SIZE; i++) {
    DTYPE golden_real, golden_imag;
    int index;
    golden_file >> index >> golden_real >> golden_imag;
    DTYPE current_error = std::abs(golden_real - real_output[i]) +
                          std::abs(golden_imag - imag_output[i]);
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
