#include "ui.h"
#include "config.h"


Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);
t_screen_mode screen_mode=NO_PAGE;

void bl_off(){
    digitalWrite(TFT_BL,LOW); //Apagamos BackLigth
}

void bl_on(){
    analogWrite(TFT_BL,0xF0); //Ahora permitimos el BackLigth
}

void init_tft(){
    Serial.print(F("ST7735 TFT init"));
    // Use this initializer if using a 1.8" TFT screen:
    tft.initR(INITR_BLACKTAB);      // Init ST7735S chip, black tab
    //tft.setSPISpeed(40000000);
    tft.fillScreen(ST7735_BLACK);

    tft.setTextColor(0xFFFF, 0x0000);
    tft.setCursor(5,140);
    tft.println("DriverDeskTFT");
    tft.setCursor(5,150);
    tft.println("v" VERSION);
    
}

void paint_main_screen(){
    
    tft.fillScreen(ST7735_BLACK);
    tft.setTextColor(0xFFFF, 0x0000);
    tft.setCursor(10,50);
    tft.printf("Value: 0");
    tft.setCursor(10,130);
    tft.println("DriverDeskTFT");
    tft.setCursor(10,140);
    tft.println("v" VERSION);
}

//128*160
// Size =28 Space =4
#define WIDTH 28
#define SPACE 4
#define HEIGH 8

t_ui_btn btn_data[]={
    {128-HEIGH,40-WIDTH/2,LEFT},
    {128-HEIGH,80-WIDTH/2,LEFT},
    {128-HEIGH,120-WIDTH/2,LEFT},
    {128-42-WIDTH/2,0,UP},
    {42-WIDTH/2,0,UP},
    {0,40-WIDTH/2,RIGHT},
    {0,80-WIDTH/2,RIGHT},
    {0,120-WIDTH/2,RIGHT},
    {42-WIDTH/2,160-HEIGH,DOWN},
    {128-42-WIDTH/2,160-HEIGH,DOWN},
    {128-5,160-5,CIRCLE},
    {5,160-5,CIRCLE},
};

void paint_btn(u_int8_t btn, u_int8_t set){
    if(btn > 11) return;
    t_ui_btn pbtn = btn_data[btn];
    tft.setCursor(pbtn.x,pbtn.y);
    uint16_t color = ST7735_YELLOW;
    if(btn==11) color = ST7735_MAGENTA;
    switch (pbtn.type)
    {
    case RIGHT:
    case LEFT:
        tft.fillRect(pbtn.x,pbtn.y,HEIGH,WIDTH,(set)?color:ST7735_BLACK);
        break;
    case DOWN:
    case UP:
        tft.fillRect(pbtn.x,pbtn.y,WIDTH,HEIGH,(set)?color:ST7735_BLACK);
        break;
    case CIRCLE:
        tft.fillCircle(pbtn.x,pbtn.y,4,(set)?color:ST7735_BLACK);
        break;
    default:
        break;
    }
}

