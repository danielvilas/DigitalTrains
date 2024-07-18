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

}