#include "lbWifi.h"

const char* ssid     = "LocoBuffer-AP";
const char* password = "12345678";


AsyncWebServer server(80);
DNSServer dns;

AsyncWiFiManager wifiManager(&server,&dns);

void configModeCallback(AsyncWiFiManager *myWiFiManager){
  Serial.println("Entered config mode");
  Serial.println(WiFi.softAPIP());

  Serial.println(myWiFiManager->getConfigPortalSSID());
}

void initWifi(){
  Serial.print("starting Wifi with WifiManager");
  wifiManager.autoConnect(ssid,password);
  wifiManager.setAPCallback(configModeCallback);
  
  Serial.println("local ip");
  Serial.println(WiFi.localIP());
  Serial.println("HostName");
  Serial.println(WiFi.getHostname());
/*  WiFi.begin(ssid,password);
    while(WiFi.status() != WL_CONNECTED){
        Serial.print(".");
        delay(100);
    }

    Serial.println("\nConnected to the WiFi network");
    Serial.print("Local ESP32 IP: ");
    Serial.println(WiFi.localIP());*/

}