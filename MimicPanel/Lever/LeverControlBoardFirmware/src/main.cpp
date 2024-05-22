#include <Arduino.h>

#ifndef SERIAL_OUT
#define SERIAL_OUT SerialUSB
#endif

#define POS_1 335
#define POS_2 460
#define POS_3 580

#define ABS_DIFF(p,d) ((p>d)?(p-d):(d-p))

void setup()
{
    SERIAL_OUT.begin(115200);
    pinMode(PIN_TEST_LED, OUTPUT);
    digitalWrite(PIN_TEST_LED,HIGH);
}

void loop(){

    int8_t pos=-1;
    uint32_t data=analogRead(PA0);
    uint32_t data1=analogRead(PA1);
    while(SERIAL_OUT.available()>0){
        int r = SERIAL_OUT.read();
        SERIAL_OUT.write(r);
    }

    uint32_t delta=0;
    delta=ABS_DIFF(POS_1,data);
    if(delta<20) pos=1;
    delta=ABS_DIFF(POS_2,data);
    if(delta<20) pos=2;
    delta=ABS_DIFF(POS_3,data);
    if(delta<20) pos=3;

    SERIAL_OUT.printf("data0: %u, data1: %u\n",data,data1);
    for(int i =0; i<pos;i++){
        digitalWrite(PIN_TEST_LED,LOW);
        delay(300);
        digitalWrite(PIN_TEST_LED,HIGH);
        delay(300);
    }  

    delay(1000);    
}