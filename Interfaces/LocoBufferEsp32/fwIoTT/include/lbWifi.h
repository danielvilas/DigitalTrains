#ifndef LB_WIFI_H
#define LB_WIFI_H

// Hardware CFG
#define PIN_CFG 0
#define PIN_LED 2
#define BUFFER_SIZE 16384


void blinkTimes(int blinks, int onDelay=500, int offDelay=500);
void initWifi();
bool loadConfigData();
void saveConfigData();


extern String ssid;
extern String password;
extern String hostname;
extern IPAddress ip;
extern IPAddress nm;
extern IPAddress gw;
extern IPAddress dns[2];
extern bool isAP;
extern bool staticIp;
#endif