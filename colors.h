#ifndef COLORS_H_
#define COLORS_H_

#include "em_device.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_chip.h"

typedef struct rgb_t{
    uint8_t G,R,B;
}rgb_t;

static const rgb_t red = {0x00,0xFF,0x00};
static const rgb_t green = {0xFF,0x00,0x00};
static const rgb_t blue = {0x00,0x00,0xFF};
static const rgb_t yellow = {0xFF,0xFF,0x00};
static const rgb_t magenta = {0x00,0xFF,0xFF};
static const rgb_t cyan = {0xFF,0x00,0xFF};
static const rgb_t white = {0xFF,0xFF,0xFF};
static const rgb_t black = {0x00,0x00,0x00};

rgb_t reduce_color_brightness(rgb_t color, uint8_t intensity_percentage);

#endif /* COLORS_H_ */
