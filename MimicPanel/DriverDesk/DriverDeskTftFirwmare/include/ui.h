#ifndef DD_UI
#define DD_UI
#include <Adafruit_GFX.h>    // Core graphics library

#include <Adafruit_ST7735.h> // Hardware-specific library for ST7789
#include <SPI.h>



void init_tft();
void bl_off();
void bl_on();

void paint_main_screen();

extern Adafruit_ST7735 tft;

enum e_screen_mode{
    NO_PAGE,
    MAIN_PAGE,
    HELP_PAGE,
};

typedef enum e_screen_mode t_screen_mode;

extern t_screen_mode screen_mode;
#endif