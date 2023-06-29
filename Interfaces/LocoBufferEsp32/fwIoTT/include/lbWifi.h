#ifndef LB_WIFI_H
#define LB_WIFI_H

// Hardware CFG
#define PIN_CFG 0
#define PIN_LED 2
#define BUFFER_SIZE 16384


void blinkTimes(int blinks, int onDelay=500, int offDelay=500);
void initWifi();

#endif