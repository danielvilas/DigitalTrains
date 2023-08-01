#include <Arduino.h>
#include "WebServer.h"
#include "lbWifi.h"
#include <ESPAsyncWebServer.h>
#include <SPIFFS.h>
#include "ArduinoJson.h"
#include "lbLcd.h"

AsyncWebServer server(HTTP_PORT);
String webPass;

#define GET_AUTH     if(!request->authenticate(webUser,webPass.c_str())){ \
        return request->requestAuthentication(); \
    }

#define DEBUG_WS(text)                \
    Serial.print(F("[WebServer]: ")); \
    Serial.println(text);

static const char HEX_CHAR_ARRAY[17] = "0123456789ABCDEF";

/**
 * convert char array (hex values) to readable string by seperator
 * buf:           buffer to convert
 * length:        data length
 * strSeperator   seperator between each hex value
 * return:        formated value as String
 */
static String byteToHexString(uint8_t *buf, uint8_t length, String strSeperator = "-")
{
    String dataString = "";
    for (uint8_t i = 0; i < length; i++)
    {
        byte v = buf[i] / 16;
        byte w = buf[i] % 16;
        if (i > 0)
        {
            dataString += strSeperator;
        }
        dataString += String(HEX_CHAR_ARRAY[v]);
        dataString += String(HEX_CHAR_ARRAY[w]);
    }
    dataString.toUpperCase();
    return dataString;
} // byteToHexString

String getESP32ChipID()
{
    uint64_t chipid;
    chipid = ESP.getEfuseMac(); // the chip ID is essentially its MAC address (length: 6 bytes)
    uint8_t chipid_size = 6;
    uint8_t chipid_arr[chipid_size];
    for (uint8_t i = 0; i < chipid_size; i++)
    {
        chipid_arr[i] = (chipid >> (8 * i)) & 0xff;
    }
    return byteToHexString(chipid_arr, chipid_size, "");
}


void handleRoot(AsyncWebServerRequest *request)
{
    // AJS - maybe we should set a scan when we get to the root???
    // and only scan on demand? timer + on demand? plus a link to make it happen?

    //  shouldscan = true;
    //  scannow = 0;
    DEBUG_WS(F("Handle root"));

    // if (captivePortal(request))
    // {
    //     // if captive portal redirect instead of displaying the page
    //     return;
    // }
    GET_AUTH

    DEBUG_WS(F("Sending Captive Portal"));
    request->send(SPIFFS, "/web/index.html");
    DEBUG_WS(F("Sent..."));
}

void handleStatus(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Handle status"));
    GET_AUTH
    String json = "{";
    json+="\"name\":\"LB_"+getESP32ChipID()+"\",";
    json+="\"wifi\":{";
    json+="\"mode\":\"";
    json+=isAP?"AP":"Client";
    json+="\",";
    json+="\"SSID\":\""+ssid+"\",";
    json+="\"hostname\":\""+hostname+"\",";
    if(staticIp){
        json+="\"staticIp\":true,";
    }else{
        json+="\"staticIp\":false,";
    }
    json+="\"ip\":\""+ip.toString()+"\",";
    json+="\"nm\":\""+nm.toString()+"\",";
    json+="\"gw\":\""+gw.toString()+"\",";
    json+="\"dns\":[\""+dns[0].toString()+"\",\""+dns[1].toString()+"\"]";
    json += "}}";

    AsyncWebServerResponse *response = request->beginResponse(200, "application/json", json);
    response->addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response->addHeader("Pragma", "no-cache");
    response->addHeader("Expires", "-1");
    request->send(response);
    json = String();
    DEBUG_WS(F("Sent status"));
}



void handleSave(AsyncWebServerRequest *request){

    DEBUG_WS(F("Handle Save"));
    GET_AUTH


    String json = "{";
    // for (unsigned int i = 0; i < request->args(); i++)
    // {
    //     json+=(i!=0)?(", \""):" \"";
    //     json += request->argName(i) + "\": \"" + request->arg(i)+"\"";
    // }


    bool valid=true;
    int code=200;
    valid= valid && request->hasArg("mode");
    valid= valid && request->hasArg("ssid");
    valid= valid && request->hasArg("pwd");
    valid= valid && request->hasArg("ipMode");
    valid= valid && request->hasArg("ip");
    valid= valid && request->hasArg("gw");
    valid= valid && request->hasArg("sn");
    valid= valid && request->hasArg("dns1");
    valid= valid && request->hasArg("dns2");

    if(valid){
        if(!request->arg("mode").equals("")){
            isAP=request->arg("mode").equals("AP");
        }
        if(!request->arg("ssid").equals(""))ssid=request->arg("ssid");
        if(!request->arg("ssid").equals(""))password=request->arg("pwd");
        if(!request->arg("ipMode").equals("")){
            staticIp=request->arg("ipMode").equals("static");
        }

        if(!request->arg("ip").equals("")){
            if(request->arg("ip").equals("0.0.0.0")){
                staticIp=false;
            }else{
                valid= valid && ip.fromString(request->arg("ip"));
            }
        }if(!request->arg("gw").equals(""))valid= valid && gw.fromString(request->arg("gw"));
        if(!request->arg("sn").equals(""))valid= valid && nm.fromString(request->arg("sn"));
        if(!request->arg("dns1").equals(""))valid= valid && dns[0].fromString(request->arg("dns1"));
        if(!request->arg("dns2").equals(""))valid= valid && dns[1].fromString(request->arg("dns2"));
    }
    if(!valid){
        code=400;
        json+="\"error\":\"Invalid Parameters\"";
        loadConfigData();
    }else{
        saveConfigData();
    }

    json += "}";
    DEBUG_WS(json);

    AsyncWebServerResponse *response = request->beginResponse(code, "application/json", json);
    response->addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response->addHeader("Pragma", "no-cache");
    response->addHeader("Expires", "-1");
    request->send(response);
    LCD_blinkLED(2);
    digitalWrite(LED_G,1);
    digitalWrite(LED_B,1);
    json = String();
    DEBUG_WS(F("Sent Save"));
    if(valid){
        initWifi();
    }
}



void handleWifiScan(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Handle Scan"));
    GET_AUTH
  String json = "[";
  int n = WiFi.scanComplete();
  if(n == -2){
    WiFi.scanNetworks(true);
  } else if(n){
    for (int i = 0; i < n; ++i){
      if(i) json += ",";
      json += "{";
      json += "\"rssi\":"+String(WiFi.RSSI(i));
      json += ",\"ssid\":\""+WiFi.SSID(i)+"\"";
      json += ",\"bssid\":\""+WiFi.BSSIDstr(i)+"\"";
      json += ",\"channel\":"+String(WiFi.channel(i));
      json += ",\"secure\":"+String(WiFi.encryptionType(i));
      json += "}";
    }
    WiFi.scanDelete();
    if(WiFi.scanComplete() == -2){
      WiFi.scanNetworks(true);
    }
  }
  json += "]";

    AsyncWebServerResponse *response = request->beginResponse(200, "application/json", json);
    response->addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response->addHeader("Pragma", "no-cache");
    response->addHeader("Expires", "-1");
    request->send(response);
    LCD_blinkLED(5,1,1);
    json = String();
    DEBUG_WS(F("Sent Scan"));
}




// handle the reset page
void handleReset(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Reset"));
    GET_AUTH
    String page = FPSTR(WFM_HTTP_HEAD);
    page.replace("{v}", "Info");
    page += FPSTR(HTTP_SCRIPT);
    page += FPSTR(HTTP_STYLE);
    page += FPSTR(HTTP_HEAD_END);
    page += F("Module will reset in a few seconds");
    page += FPSTR(HTTP_END);
    request->send(200, "text/html", page);

    DEBUG_WS(F("Sent reset page"));
    delay(5000);
    ESP.restart();
}

void handleNotFound(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Handle not found"));
    // if (captivePortal(request))
    // {
    //     // if captive portal redirect instead of displaying the error page
    //     return;
    // }

    String message = "File Not Found\n\n";
    message += "URI: ";
    message += request->url();
    message += "\nMethod: ";
    message += (request->method() == HTTP_GET) ? "GET" : "POST";
    message += "\nArguments: ";
    message += request->args();
    message += "\n";

    for (unsigned int i = 0; i < request->args(); i++)
    {
        message += " " + request->argName(i) + ": " + request->arg(i) + "\n";
    }
    AsyncWebServerResponse *response = request->beginResponse(404, "text/plain", message);
    response->addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response->addHeader("Pragma", "no-cache");
    response->addHeader("Expires", "-1");
    request->send(response);
}

void initWebServer()
{
    server.onNotFound(handleNotFound);
    server.on("/", HTTP_GET, handleRoot);
    server.on("/reset", HTTP_POST, handleReset);
    server.on("/scan", HTTP_GET, handleWifiScan);
    server.on("/status",HTTP_GET,handleStatus);
    server.on("/wifisave",HTTP_POST,handleSave);
    server.begin();
}


