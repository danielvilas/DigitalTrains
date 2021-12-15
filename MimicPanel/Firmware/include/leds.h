#ifndef LEDS_h
#define LEDS_h
#include "panel_controller.h"
void ledsInit();
void moveLed(uint8_t);
EVENT_HANDLER(ledMover,event);

#endif