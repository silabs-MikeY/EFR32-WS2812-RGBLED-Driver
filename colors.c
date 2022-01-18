#include "colors.h"

RGB reduceColorBrightness(RGB color, uint8_t intensityPercentage)
{
  if (intensityPercentage > 100)
  {
    intensityPercentage = 100;
  }
  RGB returnColor = {
      color.R * intensityPercentage / 100,
      color.G * intensityPercentage / 100,
      color.B * intensityPercentage / 100
  };
  return returnColor;
}

