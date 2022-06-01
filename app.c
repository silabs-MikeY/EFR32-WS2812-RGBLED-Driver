/***************************************************************************//**
 * @file app.c
 * @brief Top level application functions.  Demo application for WS2812 driver
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
 ******************************************************************************
* # Experimental Quality
* This code has not been formally tested and is provided as-is. It is not
* suitable for production environments. In addition, this code will not be
* maintained and there may be no bug maintenance planned for these resources.
* Silicon Labs may update projects from time to time.
******************************************************************************/
#include "app.h"
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "colors.h"
#include <stdlib.h>
#include <ws2812.h>
#include "em_letimer.h"
#include "em_emu.h"

void color_test(void)
{
  rgb_t rgb_color_buffer[NUMBER_OF_LEDS];
#define LED_INTENSITY 100
  for(uint8_t i = 0; i<NUMBER_OF_LEDS;i++){
    switch(rand() % 6){
      case 0:
        rgb_color_buffer[i] = reduce_color_brightness(red,LED_INTENSITY);
        break;
      case 1:
        rgb_color_buffer[i] = reduce_color_brightness(green,LED_INTENSITY);
        break;
      case 2:
        rgb_color_buffer[i] = reduce_color_brightness(blue,LED_INTENSITY);
        break;
      case 3:
        rgb_color_buffer[i] = reduce_color_brightness(yellow,LED_INTENSITY);
        break;
      case 4:
        rgb_color_buffer[i] = reduce_color_brightness(magenta,LED_INTENSITY);
        break;
      case 5:
        rgb_color_buffer[i] = reduce_color_brightness(cyan,LED_INTENSITY);
        break;
      case 6:
        rgb_color_buffer[i] = reduce_color_brightness(white,LED_INTENSITY);
        break;
      default:
        rgb_color_buffer[i] = black;
        break;
    }
  }
  set_color_buffer((uint8_t *)rgb_color_buffer);
}

void LETIMER0_IRQHandler(void)
{
  if (LETIMER_IntGet(LETIMER0) & LETIMER_IEN_UF){
    LETIMER_IntClear(LETIMER0, LETIMER_IEN_UF);
    color_test();
  }
}

void start_color_test()
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

  init_ws2812_driver();
  start_color_test();
}
/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{

}
