#include "WS2812-Driver.h"

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
uint8_t USART_tx_buffer[USART_BUFFER_SIZE_BYTES];

#define PROTOCOL_FREQUENCY 800000 //in Hz.  800 kHz provides the required 1.25uS duty cycle
#define REQUIRED_USART_FREQUENCY (PROTOCOL_FREQUENCY * 3) //3 USART bits are required to make a full 1.25uS color bit so USART frequency should be 3x the protocol frequency


// Descriptor and config for the LDMA operation for sending data
static LDMA_Descriptor_t ldmaTXDescriptor;
static LDMA_TransferCfg_t ldmaTXConfig;
#define TX_DMA_CHANNEL 1

void setColorBuffer(uint8_t* inputColorBuffer)
{
  // each color bit is encoded by 3 bits, the first bit is always 1 and the third bit is always 0.  The actual color bit value is encoded into the second bit
  // each color channel(1 byte) therefore requires 3 bytes to be transmitted
  // the entire 3-byte sequence is 8 repititions of (1x0)
  // each x represents a color bit
  // the x can be assumed to be 0 for now

  //FIRST_BYTE
#define FIRST_BYTE 0x92; // 1x01 x01x  1st byte which contains color bits 7,6 & 5
#define BIT_7 0x80 >> 1 //isolate bit 7 and shift to position 6, purposely not bracketed
#define BIT_6 0x40 >> 3 //isolate bit 6 and shift to position 3
#define BIT_5 0x20 >> 5 //isolate bit 5 and shift to position 0
  //SECOND BYTE
#define SECOND_BYTE 0x49; // 01x0 1x01  2nd Byte which contains color bits 4 & 3
#define BIT_4 0x10 << 1 //isolate bit 4 and shift to position 5
#define BIT_3 0x08 >> 1 //isolate bit 3 and shift to position 2
  //THIRD BYTE
#define THIRD_BYTE 0x24; // x01x 01x0  3rd Byte which contains color bits 2,1 & 0
#define BIT_2 0x04 << 5 //isolate bit 2 and shift to position 7
#define BIT_1 0x02 << 3 //isolate bit 1 and shift to position 4
#define BIT_0 0x01 << 1 //isolate bit 0 and shift to position 1

  uint8_t* color_byte = inputColorBuffer;
  uint32_t usart_buffer_index = 0;
  while(usart_buffer_index < USART_BUFFER_SIZE_BYTES)
  {
    USART_tx_buffer[usart_buffer_index++] = (*color_byte & BIT_7) | (*color_byte & BIT_6) | (*color_byte & BIT_5) | FIRST_BYTE;
    USART_tx_buffer[usart_buffer_index++] = (*color_byte & BIT_4) | (*color_byte & BIT_3) | SECOND_BYTE;
    USART_tx_buffer[usart_buffer_index++] = (*color_byte & BIT_2) | (*color_byte & BIT_1) | (*color_byte & BIT_0) | THIRD_BYTE;
    color_byte++;
  }

  LDMA_StartTransfer(TX_DMA_CHANNEL, &ldmaTXConfig, &ldmaTXDescriptor);
}

void initSerialOutput (void)
{
  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(cmuClock_USART0, true);

  // Configure GPIO mode
  GPIO_PinModeSet(gpioPortE, 10, gpioModePushPull, 0); // US0_TX (MOSI) is push pull

  // Start with default config, then modify as necessary
  USART_InitSync_TypeDef config = USART_INITSYNC_DEFAULT;
  config.master       = true;            // Master mode
  config.baudrate     = REQUIRED_USART_FREQUENCY;
  config.clockMode    = usartClockMode0; // Clock idle low, sample on rising/first edge
  config.msbf         = true;            // Send MSB first
  config.enable       = usartDisable;    // Keep USART disabled until it's all set up
  USART_InitSync(USART0, &config);

  // Set TX Pin Location
  USART0->ROUTELOC0 = USART_ROUTELOC0_TXLOC_LOC0;
  // Only enable TX pin
  USART0->ROUTEPEN = USART_ROUTEPEN_TXPEN;
  // Enable USART0
  USART_Enable(USART0, usartEnableTx);
}

void initLDMA(void)
{
  CMU_ClockEnable(cmuClock_LDMA, true);
  LDMA_Init_t ldmaInit = LDMA_INIT_DEFAULT;
  LDMA_Init(&ldmaInit); // Initializing default LDMA settings

  // Memory to peripheral transfer, Source: TxBuffer, Destination: USART0->TXDATA
  ldmaTXDescriptor = (LDMA_Descriptor_t)LDMA_DESCRIPTOR_SINGLE_M2P_BYTE(USART_tx_buffer, &(USART0->TXDATA), USART_BUFFER_SIZE_BYTES);
  // One byte will transfer everytime the USART TXBL flag is high
  ldmaTXConfig = (LDMA_TransferCfg_t)LDMA_TRANSFER_CFG_PERIPHERAL(ldmaPeripheralSignal_USART0_TXBL);
}


