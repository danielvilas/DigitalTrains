#ifndef DD_UI
#define DD_UI
#include <Adafruit_GFX.h>    // Core graphics library

#include <Adafruit_ST7735.h> // Hardware-specific library for Adafruit_ST7735
#include <SPI.h>



void init_tft();
void bl_off();
void bl_on();
void paint_btn(u_int8_t btn, u_int8_t set);

void paint_main_screen();

extern Adafruit_ST7735 tft;

enum e_screen_mode{
    NO_PAGE,
    MAIN_PAGE,
    HELP_PAGE,
};

typedef enum e_screen_mode t_screen_mode;

extern t_screen_mode screen_mode;



enum e_ui_btn_type{
    RIGHT,
    UP,
    LEFT,
    DOWN,
    CIRCLE,
};

typedef enum e_ui_btn_type t_ui_btn_type;

struct s_ui_btn{
    u_int8_t x;
    u_int8_t y;
    t_ui_btn_type type;
};

typedef struct s_ui_btn t_ui_btn;

#endif