#ifndef WS2812_DRIVER_H_
#define WS2812_DRIVER_H_
#include "em_usart.h"
#include "em_ldma.h"
#include "colors.h"
#include "app.h"

//NEEDS TO BE USER DEFINED
#ifndef NUMBER_OF_LEDS
#define NUMBER_OF_LEDS 0
#endif

//OPTIONAL USER DEFINES
#ifndef TX_DMA_CHANNEL
#define TX_DMA_CHANNEL 1
#endif

#ifndef USART_PERIPHERAL
#define USART_PERIPHERAL USART0
#endif

#ifndef USART_CMU_CLK
#define USART_CMU_CLK cmuClock_USART0
#endif

#ifndef USART_TX_LOCATION
#define USART_TX_LOCATION USART_ROUTELOC0_TXLOC_LOC0
#endif

#ifndef USART_TX_PORT
#define USART_TX_PORT gpioPortE
#endif

#ifndef USART_TX_PIN
#define USART_TX_PIN 10
#endif


void set_color_buffer(uint8_t* input_color_buffer);
void init_serial_output (void);
void init_LDMA(void);

#endif /* WS2812_DRIVER_H_ */
