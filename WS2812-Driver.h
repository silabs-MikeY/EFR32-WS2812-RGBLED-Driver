#ifndef WS2812_DRIVER_H_
#define WS2812_DRIVER_H_
#include "em_usart.h"
#include "em_ldma.h"
#include "colors.h"

#define NUMBER_OF_LEDS 24

void setColorBuffer(uint8_t* inputColorBuffer);
void initSerialOutput (void);
void initLDMA(void);

#endif /* WS2812_DRIVER_H_ */
