#include <Arduino.h>
#include "config.h"
#include "ui.h"

#ifndef SERIAL_OUT
#define SERIAL_OUT SerialUSB
#endif

#define POS_1 335
#define POS_2 460
#define POS_3 580

#define ABS_DIFF(p,d) ((p>d)?(p-d):(d-p))

/*
S1: 394 404 448 477 507
    385 397 434 488 512

S2: 560 579 623 655 667
    565 588 612 645 664
*/
const PROGMEM uint8_t numPos=5;
const PROGMEM uint16_t s0max[]={394, 410, 448, 490, 512};
const PROGMEM uint16_t s0min[]={385, 397, 434, 477, 507};

const PROGMEM uint16_t s1max[]={565, 588, 623, 655, 667};
const PROGMEM uint16_t s1min[]={560, 579, 612, 645, 664};



void setup()
{
    pinMode(PIN_TEST_LED, OUTPUT);

    SERIAL_OUT.begin(115200);
    SERIAL_OUT.println("Lever Controller v0.0.1");

    //Wire.begin();
    ui_begin();
    
    // pinMode(PA0,INPUT_ANALOG);
    // pinMode(PA1,INPUT_ANALOG);
    // pinMode(PA2,INPUT_PULLUP);
    // pinMode(PA3,INPUT_PULLUP);

}

void loop(){
    display.display();
}

/*
void loop(){

    int8_t pos=-1;
    uint32_t s0=analogRead(PA0);
    uint32_t s1=analogRead(PA1);
    while(SERIAL_OUT.available()>0){
        int r = SERIAL_OUT.read();
        SERIAL_OUT.write(r);
    }
    
    for(int i=0;i<numPos;i++){
        bool b0 = (s0>=s0min[i]) && (s0<=s0max[i]);
        bool b1 = (s1>=s1min[i]) && (s1<=s1max[i]);
        //SERIAL_OUT.printf("\t(%i): (%u>=%u) && (s0<=s0max[i])\n",i,s0,s0min[i]);
        if(b0 && b1) pos=i+1;
    }

    SERIAL_OUT.printf("s0: %u, s1: %u, pos= %i\n",s0,s1,pos);
    for(int i =0; i<pos;i++){
        digitalWrite(PIN_TEST_LED,LOW);
        delay(150);
        digitalWrite(PIN_TEST_LED,HIGH);
        delay(150);
    }  
    int btn1=digitalRead(PA2);
    int btn2=digitalRead(PA3);
    SERIAL_OUT.printf("b2: %u, b3: %u\n",btn1,btn2,pos);
    
    delay(500);    
}

*/
