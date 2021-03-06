/***************************************************************************//**
* @file WS2812_driver.c
* @brief Driver File for WS2812 RGB LEDs
* @version v1.0
*******************************************************************************
* # License
* <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
*******************************************************************************
*
* SPDX-License-Identifier: Zlib
*
* The licensor of this software is Silicon Laboratories Inc.
*
* This software is provided \'as-is\', without any express or implied
* warranty. In no event will the authors be held liable for any damages
* arising from the use of this software.
*
* Permission is granted to anyone to use this software for any purpose,
* including commercial applications, and to alter it and redistribute it
* freely, subject to the following restrictions:
*
* 1. The origin of this software must not be misrepresented; you must not
*    claim that you wrote the original software. If you use this software
*    in a product, an acknowledgment in the product documentation would be
*    appreciated but is not required.
* 2. Altered source versions must be plainly marked as such, and must not be
*    misrepresented as being the original software.
* 3. This notice may not be removed or altered from any source distribution.
*
*******************************************************************************
* # Experimental Quality
* This code has not been formally tested and is provided as-is. It is not
* suitable for production environments. In addition, this code will not be
* maintained and there may be no bug maintenance planned for these resources.
* Silicon Labs may update projects from time to time.
******************************************************************************/

#include <ws2812.h>

//******** How This Driver Works ********//
//  According to the WS2812 datasheet the protocol runs at 800kHz https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf
//  A '1' bit is created by a pulse which starts high, ends low and has a duty cycle of 64% (.8uS HIGH and 0.4uS LOW)
//  A '0' bit is created by a pulse which starts high, ends low and has a duty cycle of 32% (.4uS HIGH and 0.85uS LOW)
//  The tolerance on every edge is 150nS
//  By using a frequency of 3 x 800 kHz = 2.4MHz, 3 bits at 2.4MHz represent each bit at 800KHz
//  Each series of 3 bit begins with a '1' and ends with a '0'
//  The middle bit is modified to represent the color bit
//  If the middle bit is set to '1' the duty cycle will be 66% (0.833uS HIGH and 0.416uS LOW)
//  If the middle bit is set to '0' the duty cycle will be 33% (0.416uS HIGH and 0.833uS LOW)
//  These HIGH and LOW times are within 40nS of the specifications from the datasheet and are well within the 150nS allowed tolerance for the protocol
//  This driver uses the USART peripheral with the CLK, CS and RX disabled as only the TX pin is needed

#define NUMBER_OF_COLOR_BITS (NUMBER_OF_LEDS * 3 * 8) //3 color channels, 8 bits each
#define USART_NUMBER_OF_BITS (NUMBER_OF_COLOR_BITS * 3)  //3 USART bits are required to make a full 1.25uS color bit, each USART bit is 416nS
#define USART_BUFFER_SIZE_BYTES ((USART_NUMBER_OF_BITS / 8) + 15) //How big the USART buffer should be, the first 15 bytes should be empty to provide a 50uS reset signal
static uint8_t USART_tx_buffer[USART_BUFFER_SIZE_BYTES];

#define PROTOCOL_FREQUENCY 800000 //in Hz.  800 kHz provides the required 1.25uS duty cycle
#define REQUIRED_USART_FREQUENCY (PROTOCOL_FREQUENCY * 3) //3 USART bits are required to make a full 1.25uS color bit so USART frequency should be 3x the protocol frequency


// Descriptor and config for the LDMA operation for sending data
static LDMA_Descriptor_t ldmaTXDescriptor;
static LDMA_TransferCfg_t ldmaTXConfig;

void set_color_buffer(uint8_t *input_color_buffer)
{
  // each color bit is encoded by 3 bits, the first bit is always 1 and the third bit is always 0.  The actual color bit value is encoded into the second bit
  // each color channel(1 byte) therefore requires 3 bytes to be transmitted
  // the entire 3-byte sequence is 8 repetitions of (1x0) ->  1x01 x01x 01x0 1x01 x01x 01x0
  // each x represents a color bit

  uint8_t *input_color_byte = input_color_buffer; //isolate the first byte
  uint32_t usart_buffer_index = 0;
  while (usart_buffer_index < USART_BUFFER_SIZE_BYTES){
    //FIRST_BYTE
    #define FIRST_BYTE_DEFAULT 0x92; // 1x01 x01x  1st byte which contains color bits 7,6 & 5.     x is defaulted to 0
    uint8_t bit_7 = (*input_color_byte & 0x80) >> 1; //isolate bit 7 and shift to position 6
    uint8_t bit_6 = (*input_color_byte & 0x40) >> 3; //isolate bit 6 and shift to position 3
    uint8_t bit_5 = (*input_color_byte & 0x20) >> 5; //isolate bit 5 and shift to position 0
    USART_tx_buffer[usart_buffer_index] = bit_7 | bit_6 | bit_5 | FIRST_BYTE_DEFAULT;
    usart_buffer_index++;

    //SECOND BYTE
    #define SECOND_BYTE_DEFAULT 0x49; // 01x0 1x01  2nd Byte which contains color bits 4 & 3
    uint8_t bit_4 = (*input_color_byte & 0x10) << 1; //isolate bit 4 and shift to position 5
    uint8_t bit_3 = (*input_color_byte & 0x08) >> 1; //isolate bit 3 and shift to position 2
    USART_tx_buffer[usart_buffer_index] = bit_4 | bit_3 | SECOND_BYTE_DEFAULT;
    usart_buffer_index++;

    //THIRD BYTE
    #define THIRD_BYTE_DEFAULT 0x24; // x01x 01x0  3rd Byte which contains color bits 2,1 & 0
    uint8_t bit_2 = (*input_color_byte & 0x04) << 5; //isolate bit 2 and shift to position 7
    uint8_t bit_1 = (*input_color_byte & 0x02) << 3; //isolate bit 1 and shift to position 4
    uint8_t bit_0 = (*input_color_byte & 0x01) << 1; //isolate bit 0 and shift to position 1
    USART_tx_buffer[usart_buffer_index] = bit_2 | bit_1 | bit_0 | THIRD_BYTE_DEFAULT;
    usart_buffer_index++;

    input_color_byte++; //move to the next color byte
  }

  LDMA_StartTransfer(TX_DMA_CHANNEL, &ldmaTXConfig, &ldmaTXDescriptor);
}

void init_ws2812_driver (void)
{
  init_serial_output();
  init_LDMA();
}

void init_serial_output (void)
{
  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(USART_CMU_CLK, true);

  // Configure GPIO mode
  //
  GPIO_PinModeSet(USART_TX_PORT, USART_TX_PIN, gpioModePushPull, 0); // US0_TX (MOSI) is push pull

  // Start with default config, then modify as necessary
  USART_InitSync_TypeDef config = USART_INITSYNC_DEFAULT;
  config.master       = true;            // Master mode
  config.baudrate     = REQUIRED_USART_FREQUENCY;
  config.clockMode    = usartClockMode0; // Clock idle low, sample on rising/first edge
  config.msbf         = true;            // Send MSB first
  config.enable       = usartDisable;    // Keep USART disabled until it's all set up
  USART_InitSync(USART_PERIPHERAL, &config);

  // Set TX Pin Location
  USART_PERIPHERAL->ROUTELOC0 = USART_TX_LOCATION;
  // Only enable TX pin
  USART_PERIPHERAL->ROUTEPEN = USART_ROUTEPEN_TXPEN;
  // Enable USART
  USART_Enable(USART_PERIPHERAL, usartEnableTx);
}

void LDMA_IRQHandler()
{
  uint32_t flags = LDMA_IntGet();
  LDMA_IntClear(flags);
}

void init_LDMA(void)
{
  CMU_ClockEnable(cmuClock_LDMA, true);
  LDMA_Init_t ldmaInit = LDMA_INIT_DEFAULT;
  LDMA_Init(&ldmaInit); // Initializing default LDMA settings

  // Memory to peripheral transfer, Source: TxBuffer, Destination: USART0->TXDATA
  ldmaTXDescriptor = (LDMA_Descriptor_t)LDMA_DESCRIPTOR_SINGLE_M2P_BYTE(USART_tx_buffer, &(USART_PERIPHERAL->TXDATA), USART_BUFFER_SIZE_BYTES);
  // One byte will transfer everytime the USART TXBL flag is high
  ldmaTXConfig = (LDMA_TransferCfg_t)LDMA_TRANSFER_CFG_PERIPHERAL(ldmaPeripheralSignal_USART0_TXBL);
}


