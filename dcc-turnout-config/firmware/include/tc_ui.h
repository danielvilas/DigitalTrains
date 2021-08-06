#ifndef __TC_UI_H__
#define __TC_UI_H__

#include <RotaryEncoder.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

extern Adafruit_SSD1306 display;

void ui_begin();
#endif