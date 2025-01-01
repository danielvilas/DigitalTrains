#ifndef DD_CFG
#define DD_CFG

#include <Arduino.h>

#define TFT_CS         PA15 //PB8
#define TFT_RST        PA9
#define TFT_DC         PA4
#define TFT_BL         PA10
/*
//define TFT_CLK    PIN_SPI_SCK
//define TFT_DIN    PIN_SPI_MOSI
#define PIN_SPI_MOSI          PA7 SDA
#define PIN_SPI_MISO          PA6
#define PIN_SPI_SCK           PA5
*/

#define INT_PIN     PB4

#define VERSION "0.0.1"

#include "buttons.h"

#endif