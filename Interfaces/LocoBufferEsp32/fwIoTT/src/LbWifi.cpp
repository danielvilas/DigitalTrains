#include <Arduino.h>
#include "lbWifi.h"
#include <WiFi.h>
#include <SPIFFS.h>
#include <ArduinoJson.h>

#define BUFFER_SIZE 16384

const char* ssid     = "LocoBuffer-AP";
const char* password = "12345678";

bool isAP=false;
bool initCP=false;

void blinkTimes(int blinks, int onDelay=500, int offDelay=500){
  for(int i=0;i<blinks;i++){
    digitalWrite(PIN_LED,1);
    delay(onDelay);
    digitalWrite(PIN_LED,0);
    delay(offDelay);
  }
}

uint32_t readFileToBuffer(String fileName, char * thisBuffer, uint32_t maxSize)
{
  uint32_t bytesRead = 0;
//  Serial.printf("Trying to read File %s\n", &fileName[0]);
  if (SPIFFS.exists(fileName))
  {
    File dataFile = SPIFFS.open(fileName, "r");
    if (dataFile)
    {
      if (dataFile.size() < maxSize)
      {
        bytesRead = dataFile.size();
        dataFile.read((uint8_t*)thisBuffer, bytesRead);
        thisBuffer[bytesRead] = '\0'; 
      }
      dataFile.close();
    }
    else 
      Serial.printf("Can't open %s \n", &fileName[0]);
  } 
  else 
    Serial.printf("File %s not found\n", &fileName[0]);
  return bytesRead;
}


DynamicJsonDocument * getDocument(char* buffer, const char* file){
  if(SPIFFS.begin()){
    uint32_t jsonData = readFileToBuffer(file, buffer, BUFFER_SIZE);
    if (jsonData > 0){
      uint16_t docSize = 4096 * (trunc((3 * jsonData) / 4096) + 1);
      //Serial.println(buffer);
      //Serial.printf("Size: %i Doc Size: %i\n", jsonData, docSize);
      DynamicJsonDocument * thisDoc = new DynamicJsonDocument(docSize);
      DeserializationError error;
      error = deserializeJson(*thisDoc, buffer);
      if(error) {
        Serial.println("Deserialization error");
        return NULL;
      }
      return thisDoc;
    
    }else{
      Serial.println("error reading wifi.json");
      return NULL;
    }
  }else{
    Serial.println(F("Not able to open SPIFFS"));
    return NULL;
  }
}

bool loadConfigData()
{
  Serial.println("Reading wifi.json");
  char* buffer= (char*) malloc(BUFFER_SIZE);
  DynamicJsonDocument* doc = getDocument(buffer,"/wifi.json");
  bool res =false;
  if(doc!=NULL){
    res= doc->containsKey("mode");
    if(res){
      String mode = (*doc)["mode"];
      Serial.printf("MODE: %s\n",mode.c_str());
      if(mode == "AP"){
        isAP=true;
      }else if(mode == "STA"){
        isAP=false;
      }else{
        res=false;
      }
    }
    res = res && doc->containsKey("SSID");
    if(res){
      String _ssid=(*doc)["SSID"];
      Serial.printf("SSID: %s\n", _ssid.c_str());
    }
  }
  
  free(buffer);
  free(doc);
  return res;
}

void initWifi(){
  Serial.print("starting Wifi");
  delay(200);
  blinkTimes(3);
  int bntCfg=digitalRead(PIN_CFG);

  
  if(!bntCfg || !loadConfigData()){
    initCP=true;
  }
  

  if(isAP){
    WiFi.mode(WIFI_AP);
    WiFi.softAP(ssid, password);
    blinkTimes(2,300,200);
    IPAddress IP = WiFi.softAPIP();
    Serial.print("AP IP address: ");
    Serial.println(IP);
  }else{
    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid,password);
  }
}
