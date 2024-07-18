#include <Arduino.h>
#include "ui.h"
#include "config.h"
#include "global_data.h"

GlobalData global;

void ledPing(){
  //Señal con el led
  digitalWrite(PIN_TEST_LED,LOW); 
  delay(100);    
  digitalWrite(PIN_TEST_LED,HIGH);
  delay(50);
  // Encendemos el Led para inciar cfg
  digitalWrite(PIN_TEST_LED,LOW);
}

void setup(void) {
  pinMode(PIN_TEST_LED,OUTPUT);
  pinMode(TFT_BL,OUTPUT);
  bl_off();

  ledPing();  

  Serial.begin(115200);
  Serial.println("DriverDeskTft v" VERSION);
  init_tft();
  bl_on();
  //Apagamos el LED, ya hemos activado el TFT
  digitalWrite(PIN_TEST_LED,HIGH);
  Serial.println(F("Initialized"));

  delay(2000);

  paint_main_screen();
}

void loop() {
  tft.invertDisplay(true);
  delay(500);
  tft.invertDisplay(false);
  delay(500);
}
