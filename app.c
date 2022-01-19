/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include "app.h"
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "colors.h"
#include "WS2812-Driver.h"
#include <stdlib.h>
#include "em_letimer.h"
#include "em_emu.h"

void colorTest(void)
{
  RGB RGB_color_buffer[NUMBER_OF_LEDS];
  for(uint8_t i = 0; i<NUMBER_OF_LEDS;i++)
  {
    switch(rand() % 6){
      case 0:
        RGB_color_buffer[i] = reduceColorBrightness(red,100);
        break;
      case 1:
        RGB_color_buffer[i] = reduceColorBrightness(green,100);
        break;
      case 2:
        RGB_color_buffer[i] = reduceColorBrightness(blue,100);
        break;
      case 3:
        RGB_color_buffer[i] = reduceColorBrightness(yellow,100);
        break;
      case 4:
        RGB_color_buffer[i] = reduceColorBrightness(magenta,100);
        break;
      case 5:
        RGB_color_buffer[i] = reduceColorBrightness(cyan,100);
        break;
      case 6:
        RGB_color_buffer[i] = reduceColorBrightness(white,100);
        break;
      default:
        RGB_color_buffer[i] = black;
        break;
    }
  }
  setColorBuffer((uint8_t*)RGB_color_buffer);
}

void LDMA_IRQHandler()
{
  uint32_t flags = LDMA_IntGet();
  LDMA_IntClear(flags);

}

void LETIMER0_IRQHandler(void)
{
  if (LETIMER_IntGet(LETIMER0) & LETIMER_IEN_UF)
  {
    LETIMER_IntClear(LETIMER0, LETIMER_IEN_UF);
    colorTest();
  }
}

void startColorTest()
{
  LETIMER_Init_TypeDef letimerInit = LETIMER_INIT_DEFAULT;
  CMU_ClockEnable(cmuClock_HFLE, true);

  CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_LFXO);
  CMU_ClockEnable(cmuClock_LETIMER0, true);
#define LETIMER_MAX_VALUE (0x01 << 15)
  letimerInit.topValue = LETIMER_MAX_VALUE / 2;
  LETIMER_Init(LETIMER0, &letimerInit );

  LETIMER_IntEnable(LETIMER0, LETIMER_IEN_UF);
  NVIC_EnableIRQ (LETIMER0_IRQn);
  NVIC_EnableIRQ (LDMA_IRQn);

  LETIMER_Enable(LETIMER0,true);

  EMU_EnterEM2(true);
}

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void app_init(void)
{
  // Initialize chip
  CHIP_Init();

  initSerialOutput();
  initLDMA();

  startColorTest();

}
/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{

}
