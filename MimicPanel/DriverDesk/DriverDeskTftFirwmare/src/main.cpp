#include <Arduino.h>
#include "ui.h"
#include "config.h"
#include "global_data.h"

#include <RotaryEncoder.h>
#include <STM32TimerInterrupt.h>

GlobalData global;
volatile boolean valueChanged=false;

RotaryEncoder *encoder = nullptr;
STM32Timer ITimer(TIM1);
#define TIMER1_INTERVAL_MS        20

void checkPosition()
{
  encoder->tick(); // just call tick() to check the state.
  valueChanged=true;
}


void checkPush(){
  
  uint16_t t_pa;
  uint16_t t_pb;
  t_pa = LL_GPIO_ReadInputPort(GPIOA) & PA_MASK;
  t_pb = LL_GPIO_ReadInputPort(GPIOB) & PB_MASK;
  uint16_t t_btn = convertToBtns(~t_pa,~t_pb);
  pushPorts(t_btn);
}

void init_renc(){
  encoder = new RotaryEncoder(RENC_A, RENC_B, RotaryEncoder::LatchMode::FOUR0);

  // register interrupt routine
  attachInterrupt(digitalPinToInterrupt(RENC_A), checkPosition, CHANGE);
  attachInterrupt(digitalPinToInterrupt(RENC_B), checkPosition, CHANGE);

  ITimer.attachInterruptInterval(TIMER1_INTERVAL_MS * 1000, checkPush);
}



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

  init_renc();

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
  if(valueChanged){
    tft.fillScreen(ST7735_BLACK);

    tft.setTextColor(0xFFFF, 0x0000);
    tft.setCursor(10,50);
    tft.printf("Value: %i",encoder->getPosition());
    tft.setCursor(5,140);
    tft.println("DriverDeskTFT");
    tft.setCursor(5,150);
    tft.println("v" VERSION);
    valueChanged=false;
  }
  u_int16_t btn;
  while(popPorts(&btn)==SUCCESS){
    tft.setCursor(10,60);
    tft.printf("BUTTON");
    Serial.printf("BTNS: %04x\n",btn);
  }

  //Serial.printf("Value: %i\n",rotaryEncoder.getValue());
  
  delay(100);
  
}
