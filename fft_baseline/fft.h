#ifndef FFT_H_
#define FFT_H_

typedef float DTYPE;
typedef int INTTYPE;
#define M 10 			/* Number of Stages = Log2N */
#define SIZE 1024 		/* SIZE OF FFT */
#define SIZE2 SIZE>>1	/* SIZE/2 */

void fft(DTYPE XX_R[SIZE], DTYPE XX_I[SIZE]);
void fft_streaming(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);

#include "tw_i.h"
#include "tw_r.h"

#endif
