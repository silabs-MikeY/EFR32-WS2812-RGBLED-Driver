#include "colors.h"

rgb_t reduce_color_brightness(rgb_t color, uint8_t intensity_percentage)
{
  if (intensity_percentage > 100){
    intensity_percentage = 100;
  }
  rgb_t return_color = {
      color.R * intensity_percentage / 100,
      color.G * intensity_percentage / 100,
      color.B * intensity_percentage / 100
  };
  return return_color;
}

