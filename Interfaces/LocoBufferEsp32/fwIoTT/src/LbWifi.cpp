#include <Arduino.h>
#include "lbWifi.h"
#include <WiFi.h>
#include <SPIFFS.h>
#include <ArduinoJson.h>
#include "WebServer.h"


String ssid     = "LocoBuffer-AP";
String password = "12345678";
String hostname = "LocoBuffer-AP";
bool staticIp=false;
IPAddress ip;
IPAddress nm;
IPAddress gw;
IPAddress dns[2];


bool isAP=false;
bool initCP=false;

void blinkTimes(int blinks, int onDelay, int offDelay){
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
      if(_ssid !=""){
        ssid=_ssid;
      }else{
        res=false;
      }
    }
    res = res && doc->containsKey("password");
    if(res){
      String _password=(*doc)["password"];
      Serial.printf("password: %s\n", _password.c_str());
      if(_password !=""){
        password=_password;
      }else{
        res=false;
      }
    }
    res = res && doc->containsKey("webPass");
    if(res){
      String _webPass=(*doc)["webPass"];
      Serial.printf("webPass: %s\n", _webPass.c_str());
      if(_webPass !=""){
        webPass=_webPass;
      }else{
        res=false;
      }
    }
    res=res && doc->containsKey("hostname");
    if(res){
      String _hostname=(*doc)["hostname"];
      Serial.printf("hostname: %s\n", _hostname.c_str());
      if(_hostname !=""){
        hostname=_hostname;
      }else{
        res=false;
      }
    }
    res = res && doc->containsKey("ip");
    if(res){
      String _ip=(*doc)["ip"];
      Serial.printf("ip: %s\n", _ip.c_str());
      if(_ip==""||_ip=="0.0.0.0"){
        staticIp=false;
      }else{
        staticIp=true;
      }
      ip.fromString(_ip);
    }
    res = res && doc->containsKey("nm");
    if(res){
      String _nm=(*doc)["nm"];
      Serial.printf("nm: %s\n", _nm.c_str());
      nm.fromString(_nm);
    }
    res = res && doc->containsKey("gw");
    if(res){
      String _gw=(*doc)["gw"];
      Serial.printf("gw: %s\n", _gw.c_str());
      gw.fromString(_gw);
    }
    res= res && doc->containsKey("dns");
    if(res){
      for(int i=0;i<2;i++){
        String _dns = (*doc)["dns"][i];
        Serial.printf("dns[%i]: %s\n",i, _dns.c_str());
        dns[i].fromString(_dns);
      }
    }
  }
  Serial.println("End Config");
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

  if(staticIp){
    WiFi.config(ip,gw,nm,dns[0],dns[1]);
  }
  

  if(isAP){
    WiFi.mode(WIFI_AP);
    WiFi.softAP(ssid.c_str(), password.c_str());
    if(!WiFi.softAPConfig(ip,gw,nm)){
      Serial.println("Error Setting IP");
    }
    WiFi.setHostname(hostname.c_str());
    blinkTimes(2,300,200);
    Serial.print("AP Hostname: ");
    Serial.println(WiFi.getHostname());
    Serial.print("AP IP address: ");
    Serial.println(WiFi.softAPIP());
    Serial.print("AP GW address: ");
    Serial.println(WiFi.gatewayIP());
    Serial.print("AP NM address: ");
    Serial.println(WiFi.subnetMask());
    Serial.print("AP DNS[0] address: ");
    Serial.println(WiFi.dnsIP(0));
    Serial.print("AP DNS[1] address: ");
    Serial.println(WiFi.dnsIP(1));
  }else{
    WiFi.mode(WIFI_STA);
    WiFi.softAP(ssid.c_str(), password.c_str());
  }
}
