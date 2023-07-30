#ifndef MAIN_H_
#define MAIN_H_

#include <stdint.h>
#include <stdio.h>
#include "stm32f3xx.h"
#include "uart.h"
#include "adc.h"
#include "dma.h"
#include "arm_math.h"
#include "arm_const_structs.h"
#include "arm_common_tables.h"
#include "fpu.h"
#include "fastICA.h"
#include "waves.h"

#define winLengthDouble	256
#define winLength 		128
#define numVoices		2

#define IOPAEN			(1U<<17)
#define PIN5 			(1U<<5)

#define LED_PIN			PIN5

#define IFCR_CTCIF1 	(1U<<1)
#define IFCR_CHTIF1 	(1U<<2)

#define ISR_TCIF1 		(1U<<1)
#define ISR_HTIF1 		(1U<<2)

#define IFCR_CTCIF2 	(1U<<5)
#define IFCR_CHTIF2 	(1U<<6)

#define ISR_TCIF2 		(1U<<5)
#define ISR_HTIF2 		(1U<<6)


uint16_t mic1[winLengthDouble], mic2[winLengthDouble];

float32_t input[winLength];

arm_matrix_instance_f32 A, V;

float32_t vData[winLengthDouble];
float32_t z1[winLength];
float32_t z2[winLength];


int i = 0;
int k = 0;

volatile char k1 = 0;
volatile char k2 = 0;

#endif /* MAIN_H_ */
