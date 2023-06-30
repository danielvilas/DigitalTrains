#include <Arduino.h>
#include "WebServer.h"
#include "lbWifi.h"
#include <ESPAsyncWebServer.h>

AsyncWebServer server(HTTP_PORT);

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
boolean isIp(String str)
{
    for (unsigned int i = 0; i < str.length(); i++)
    {
        int c = str.charAt(i);
        if (c != '.' && (c < '0' || c > '9'))
        {
            return false;
        }
    }
    return true;
}

String toStringIp(IPAddress ip)
{
    String res = "";
    for (int i = 0; i < 3; i++)
    {
        res += String((ip >> (8 * i)) & 0xFF) + ".";
    }
    res += String(((ip >> 8 * 3)) & 0xFF);
    return res;
}

/** Redirect to captive portal if we got a request for another domain.
 * Return true in that case so the page handler do not try to handle the request again. */
boolean captivePortal(AsyncWebServerRequest *request)
{
    if (!isIp(request->host()))
    {
        DEBUG_WS(F("Request redirected to captive portal"));
        AsyncWebServerResponse *response = request->beginResponse(302, "text/plain", "");
        response->addHeader("Location", String("http://") + toStringIp(request->client()->localIP()));
        request->send(response);
        return true;
    }
    return false;
}

void handleRoot(AsyncWebServerRequest *request)
{
    // AJS - maybe we should set a scan when we get to the root???
    // and only scan on demand? timer + on demand? plus a link to make it happen?

    //  shouldscan = true;
    //  scannow = 0;
    DEBUG_WS(F("Handle root"));

    if (captivePortal(request))
    {
        // if captive portal redirect instead of displaying the page
        return;
    }

    DEBUG_WS(F("Sending Captive Portal"));

    String page = FPSTR(WFM_HTTP_HEAD);
    page.replace("{v}", "Options");
    page += FPSTR(HTTP_SCRIPT);
    page += FPSTR(HTTP_STYLE);
    //  page += _customHeadElement;
    page += FPSTR(HTTP_HEAD_END);
    page += "<h1>";
    page += "Locobuffer ESP32";
    page += "</h1>";
    page += F("<h3>Config</h3>");
    page += FPSTR(HTTP_PORTAL_OPTIONS);
    //  page += _customOptionsElement;
    page += FPSTR(HTTP_END);

    request->send(200, "text/html", page);
    DEBUG_WS(F("Sent..."));
}

// wifi config page handler

void handleWifi(AsyncWebServerRequest *request, boolean scan)
{
    //  shouldscan = true;
    //  scannow = 0;

    DEBUG_WS(F("Handle wifi"));

    String page = FPSTR(WFM_HTTP_HEAD);
    page.replace("{v}", "Config ESP");
    page += FPSTR(HTTP_SCRIPT);
    page += FPSTR(HTTP_STYLE);
    // page += _customHeadElement;
    page += FPSTR(HTTP_HEAD_END);

    if (scan)
    {
        /*
        wifiSSIDscan = false;

        DEBUG_WS(F("Scan done"));
        if (wifiSSIDCount == 0)
        {
            DEBUG_WS(F("No networks found"));
            page += F("No networks found. Refresh to scan again");
        }
        else
        {
            // display networks in page
            String pager = networkListAsString();
            page += pager;
            page += "<br/>";
        }*/
    }
   //wifiSSIDscan = true;

    page+= FPSTR(HTTP_FORM_START);
    page+= FPSTR(HTTP_FORM_SELEC_MODE_START);
    String item=FPSTR(HTTP_FORM_SELEC_MODE_OPTION);
    item.replace("{v}","c");
    item.replace("{t}","Client");
    item.replace("{s}", (!isAP)?"selected":"");
    page+=item;
    item=FPSTR(HTTP_FORM_SELEC_MODE_OPTION);
    item.replace("{v}","a");
    item.replace("{t}","Access Point");
    item.replace("{s}", (isAP)?"selected":"");
    page+=item;
    page+= FPSTR(HTTP_FORM_SELEC_MODE_END);

    item =  FPSTR(HTTP_FORM_SSID_PW);
    item.replace("{vSsid}",ssid);
    item.replace("{vPw}",password);
    page +=item;
    char parLength[2];

    // add the extra parameters to the form
    /*for (unsigned int i = 0; i < _paramsCount; i++)
    {
      if (_params[i] == NULL)
      {
        break;
      }

      String pitem = FPSTR(HTTP_FORM_PARAM);
      if (_params[i]->getID() != NULL)
      {
        pitem.replace("{i}", _params[i]->getID());
        pitem.replace("{n}", _params[i]->getID());
        pitem.replace("{p}", _params[i]->getPlaceholder());
        snprintf(parLength, 2, "%d", _params[i]->getValueLength());
        pitem.replace("{l}", parLength);
        pitem.replace("{v}", _params[i]->getValue());
        pitem.replace("{c}", _params[i]->getCustomHTML());
      }
      else
      {
        pitem = _params[i]->getCustomHTML();
      }

      page += pitem;
    }
    if (_params[0] != NULL)
    {
      page += "<br/>";
    }
    */
    item = FPSTR(HTTP_FORM_PARAM);
    item.replace("{i}", "ip");
    item.replace("{n}", "ip");
    item.replace("{p}", "Static IP");
    item.replace("{l}", "15");
    item.replace("{v}", ip.toString());

    page += item;

    item = FPSTR(HTTP_FORM_PARAM);
    item.replace("{i}", "gw");
    item.replace("{n}", "gw");
    item.replace("{p}", "Static Gateway");
    item.replace("{l}", "15");
    item.replace("{v}", gw.toString());

    page += item;

    item = FPSTR(HTTP_FORM_PARAM);
    item.replace("{i}", "sn");
    item.replace("{n}", "sn");
    item.replace("{p}", "Subnet");
    item.replace("{l}", "15");
    item.replace("{v}", nm.toString());

    page += item;

    item = FPSTR(HTTP_FORM_PARAM);
    item.replace("{i}", "dns1");
    item.replace("{n}", "dns1");
    item.replace("{p}", "DNS1");
    item.replace("{l}", "15");
    item.replace("{v}", dns[0].toString());

    page += item;

    item = FPSTR(HTTP_FORM_PARAM);
    item.replace("{i}", "dns2");
    item.replace("{n}", "dns2");
    item.replace("{p}", "DNS2");
    item.replace("{l}", "15");
    item.replace("{v}", dns[1].toString());

    page += item;
    page += "<br/>";

    page += FPSTR(HTTP_FORM_END);
    page += FPSTR(HTTP_SCAN_LINK);
    page += FPSTR(HTTP_END);

    request->send(200, "text/html", page);

    DEBUG_WS(F("Sent config page"));
}

void handleWifiScan(AsyncWebServerRequest *request)
{
    handleWifi(request, true);
}

/*
// handle the WLAN save form and redirect to WLAN config page again
void handleWifiSave(AsyncWebServerRequest *request)
{
  DEBUG_WS(F("WiFi save"));

  // SAVE/connect here
  needInfo = true;
  _ssid = request->arg("s").c_str();
  _pass = request->arg("p").c_str();

  // parameters
  for (unsigned int i = 0; i < _paramsCount; i++)
  {
    if (_params[i] == NULL)
    {
      break;
    }
    // read parameter
    String value = request->arg(_params[i]->getID()).c_str();
    // store it in array
    value.toCharArray(_params[i]->_value, _params[i]->_length);

    DEBUG_WS(F("Parameter"));
    DEBUG_WS(_params[i]->getID());
    DEBUG_WS(value);
  }

  if (request->hasArg("ip"))
  {
    DEBUG_WS(F("static ip"));
    DEBUG_WS(request->arg("ip"));
    //_sta_static_ip.fromString(request->arg("ip"));
    String ip = request->arg("ip");
    optionalIPFromString(&_sta_static_ip, ip.c_str());
  }
  if (request->hasArg("gw"))
  {
    DEBUG_WS(F("static gateway"));
    DEBUG_WS(request->arg("gw"));
    String gw = request->arg("gw");
    optionalIPFromString(&_sta_static_gw, gw.c_str());
  }
  if (request->hasArg("sn"))
  {
    DEBUG_WS(F("static netmask"));
    DEBUG_WS(request->arg("sn"));
    String sn = request->arg("sn");
    optionalIPFromString(&_sta_static_sn, sn.c_str());
  }
  if (request->hasArg("dns1"))
  {
    DEBUG_WS(F("static DNS 1"));
    DEBUG_WS(request->arg("dns1"));
    String dns1 = request->arg("dns1");
    optionalIPFromString(&_sta_static_dns1, dns1.c_str());
  }
  if (request->hasArg("dns2"))
  {
    DEBUG_WS(F("static DNS 2"));
    DEBUG_WS(request->arg("dns2"));
    String dns2 = request->arg("dns2");
    optionalIPFromString(&_sta_static_dns2, dns2.cpager
  page.replace("{v}", "Credentials Saved");
  page += FPSTR(HTTP_SCRIPT);
  page += FPSTR(HTTP_STYLE);
  page += _customHeadElement;
  page += F("<meta http-equiv=\"refresh\" content=\"5; url=/i\">");
  page += FPSTR(HTTP_HEAD_END);
  page += FPSTR(HTTP_SAVED);
  page += FPSTR(HTTP_END);

  request->send(200, "text/html", page);

  DEBUG_WS(F("Sent wifi save page"));

  connect = true; // signal ready to connect/reset
}
*/
// handle the info page
String infoAsString()
{
    String page;
    page += F("<dt>Chip ID</dt><dd>");
    page += getESP32ChipID();
    page += F("</dd>");
    page += F("<dt>Flash Chip ID</dt><dd>");
    page += F("N/A for ESP32");
    page += F("</dd>");
    page += F("<dt>IDE Flash Size</dt><dd>");
    page += ESP.getFlashChipSize();
    page += F(" bytes</dd>");
    page += F("<dt>Real Flash Size</dt><dd>");
    page += F("N/A for ESP32");
    page += F(" bytes</dd>");
    page += F("<dt>Soft AP IP</dt><dd>");
    page += WiFi.softAPIP().toString();
    page += F("</dd>");
    page += F("<dt>Soft AP MAC</dt><dd>");
    page += WiFi.softAPmacAddress();
    page += F("</dd>");
    page += F("<dt>Station SSID</dt><dd>");
    page += WiFi.SSID();
    page += F("</dd>");
    page += F("<dt>Station IP</dt><dd>");
    page += WiFi.localIP().toString();
    page += F("</dd>");
    page += F("<dt>Station MAC</dt><dd>");
    page += WiFi.macAddress();
    page += F("</dd>");
    page += F("</dl>");
    return page;
}

void handleInfo(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Info"));

    String page = FPSTR(WFM_HTTP_HEAD);
    page.replace("{v}", "Info");
    page += FPSTR(HTTP_SCRIPT);
    page += FPSTR(HTTP_STYLE);
    // page += _customHeadElement;
    page += FPSTR(HTTP_HEAD_END);
    page += F("<dl>");
    page += infoAsString();
    page += FPSTR(HTTP_END);

    request->send(200, "text/html", page);

    DEBUG_WS(F("Sent info page"));
}

// handle the reset page
void handleReset(AsyncWebServerRequest *request)
{
    DEBUG_WS(F("Reset"));

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
    if (captivePortal(request))
    {
        // if captive portal redirect instead of displaying the error page
        return;
    }

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
    server.on("/i", HTTP_GET, handleInfo);
    server.on("/r", HTTP_POST, handleReset);
    server.on("/wifi", HTTP_GET, handleWifiScan);
    server.begin();
}

