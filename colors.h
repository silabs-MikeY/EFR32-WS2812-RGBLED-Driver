#ifndef COLORS_H_
#define COLORS_H_

#include "em_device.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_chip.h"

typedef struct RGB{
    uint8_t G,R,B;
}RGB;

static const RGB red = {0x00,0xFF,0x00};
static const RGB green = {0xFF,0x00,0x00};
static const RGB blue = {0x00,0x00,0xFF};
static const RGB yellow = {0xFF,0xFF,0x00};
static const RGB magenta = {0x00,0xFF,0xFF};
static const RGB cyan = {0xFF,0x00,0xFF};
static const RGB white = {0xFF,0xFF,0xFF};
static const RGB black = {0x00,0x00,0x00};

RGB reduceColorBrightness(RGB color, uint8_t intensityPercentage);

#endif /* COLORS_H_ */
