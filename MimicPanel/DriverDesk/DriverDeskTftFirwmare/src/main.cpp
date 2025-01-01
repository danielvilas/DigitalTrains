#include <Arduino.h>
#include "ui.h"
#include "config.h"
#include "global_data.h"

#include <RotaryEncoder.h>
#include <STM32TimerInterrupt.h>
#include <DdtProtoClient.h>

GlobalData global;
volatile boolean valueChanged=false;

RotaryEncoder *encoder = nullptr;
STM32Timer ITimer(TIM1);
#define TIMER1_INTERVAL_MS        20

void checkPosition()
{
  encoder->tick(); // just call tick() to check the state.
  valueChanged=true;
  digitalWrite(INT_PIN,LOW);
}


void checkPush(){
  
  uint16_t t_pa;
  uint16_t t_pb;
  t_pa = LL_GPIO_ReadInputPort(GPIOA) & PA_MASK;
  t_pb = LL_GPIO_ReadInputPort(GPIOB) & PB_MASK;
  uint16_t t_btn = convertToBtns(~t_pa,~t_pb);
  if(pushPorts(t_btn)==BTNQ_SUCCESS) digitalWrite(INT_PIN,LOW);
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
  pinMode(INT_PIN,OUTPUT_OPEN_DRAIN);

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

  digitalWrite(INT_PIN,1);
  initDdtProtoDevice();
  delay(2000);

  paint_main_screen();
}

u_int16_t btn_last_paint=0;


void loop() {
  if(valueChanged){
    tft.fillRect(50,50,30,8,ST7735_BLACK);
    tft.setCursor(52,50); 
    tft.printf("%i",encoder->getPosition()); 
    
    valueChanged=false;
  }
  u_int16_t btn=btn_last_paint;
  while(popPorts(&btn)==SUCCESS){
    Serial.printf("BTNS: %04x\n",btn);
  }
  
  if(btn!=btn_last_paint){
    for(u_int8_t i=0;i<NUM_BUTTONS;i++){
      u_int16_t mask = 1 << i;
      if( (btn&mask) != (btn_last_paint & mask )){
        paint_btn(i,(btn &mask)?1:0);
      }
    }
    btn_last_paint=btn;
  }
  digitalWrite(INT_PIN,HIGH);
  //Serial.printf("Value: %i\n",rotaryEncoder.getValue());
  
  delay(100);
  
}
