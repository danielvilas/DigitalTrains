#include <Arduino.h>
#include "config.h"
#include "tc_ui.h"
#include "tc_menu.h"

unsigned int pos_thrown;
unsigned int pos_closed;
unsigned int speed;

void setup()
{

    ui_begin();
    menu_begin();

    SerialUSB.begin();
}


void loop()
{
    nav.poll();
    display.display();
}

/*
Actions
*/
result sendThrow()
{
    SerialUSB.println("sendThrow!");return proceed;
}

result sendClose()
{
    SerialUSB.println("sendClose!");return proceed;
}

result sendSave()
{
    SerialUSB.println("sendSave!");return proceed;
}

result sendLoad()
{
    SerialUSB.println("sendLoad!");return proceed;
}

result sendFactory()
{
    SerialUSB.println("sendFactory!");return proceed;
}

result readCvs(){
    pos_closed=0;
    pos_thrown=0;
    speed=5;
    return proceed;
}