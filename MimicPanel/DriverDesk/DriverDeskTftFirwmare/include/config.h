#ifndef DD_CFG
#define DD_CFG

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

#define VERSION "0.0.1"


#define BTN_H PA8
#define RENC_A PA1
#define RENC_B PA2
#define RENC_S PA3


#define BTN_5 PB0
#define BTN_4 PB1
#define BTN_3 PB8
#define BTN_2 PB9
#define BTN_1 PB10

#define BTN_10 PB11
#define BTN_9 PB12
#define BTN_8 PB13
#define BTN_7 PB14
#define BTN_6 PB15




#define PA_MASK 0x0108 // 0000 0001 0000 1000 PA8 PA3
#define PB_MASK 0xff03 // 1111 1111 0000 0011 PB0 PB1 PB8-PB15

#endif