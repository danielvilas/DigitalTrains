#include <Arduino.h>
#include <IoTT_LocoNetHBESP32.h> 
#include <IoTT_lbServer.h>

#include "lbWifi.h"


/////////USER CONFIGURATION//////////////////////////////////////////
#define pinRx    22  //pin used to receive LocoNet signals
#define pinTx    23  //pin used to transmit LocoNet signals
#define pinNop   30  //unused pin to set for the hardware Serial port as transmit pin
#define InverseLogic true
#define showPerformance
/////////END OF USER CONFIGURATION//////////////////////////////////////////


LocoNetESPSerial lnSerial(2); //true is inverted signals
IoTT_LBServer * lbServer=NULL;
IoTT_DigitraxBuffers * digitraxBuffer = NULL;
std::vector<wsClientInfo> globalClients; 
String deviceName="Esp32LB";


//used for performance analysis
#ifdef showPerformance
  uint16_t loopCtr = 0;
  uint32_t myTimer = millis() + 1000;
#endif

void callbackLocoNetMessage(lnReceiveBuffer * newData)
{
   Serial.printf("LN Msg Error Flags %2X ReqID %i with %i bytes requested %i response time %i echo time %i: ", newData->errorFlags, newData->requestID, newData->lnMsgSize, newData->reqRecTime, newData->reqRespTime, newData->echoTime); 
   for (int i=0; i<newData->lnMsgSize; i++)
   {
     Serial.print(newData->lnData[i],16);
     Serial.print(" ");
   }
   Serial.println();
   lbServer->lnWriteMsg(newData);
}

void callbackLocoNetMessageUpstream(lnReceiveBuffer * newData)
{
   Serial.printf("LNU Msg Error Flags %2X ReqID %i with %i bytes requested %i response time %i echo time %i: ", newData->errorFlags, newData->requestID, newData->lnMsgSize, newData->reqRecTime, newData->reqRespTime, newData->echoTime); 
   for (int i=0; i<newData->lnMsgSize; i++)
   {
     Serial.print(newData->lnData[i],16);
     Serial.print(" ");
   }
   Serial.println();
}
 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  initWifi();
  lnSerial.begin(pinRx,pinTx,false,true);
  digitraxBuffer = new IoTT_DigitraxBuffers(sendMsg);
  lbServer=new IoTT_LBServer();
  lbServer->initLBServer(true);
  delay(1000);
  lnSerial.setBusyLED(16 );
  lbServer->startServer();
  Serial.println("Init Done");
  randomSeed((uint32_t)ESP.getEfuseMac()); //initialize random generator with MAC
}

void loop() {
  // put your main code here, to run repeatedly:

#ifdef showPerformance
  loopCtr++;
  if (millis() > myTimer)
  {
    Serial.printf("Timer Loop: %i\n", loopCtr);
    loopCtr = 0;
    myTimer += 1000;
  }
#endif
  lnSerial.processLoop();
  lbServer->processLoop();

  yield();
}


uint16_t sendMsg(lnTransmitMsg txData)
{
//  Serial.printf("verifySyntax %i\n", useInterface.devId);
//  if (!verifySyntax(&txData.lnData[0]))
//  {
//    Serial.printf("ERROR: Call sendMsg to %i: %i, %2X, %2X, %2X, %2X \n", useInterface.devId, txData.lnMsgSize, txData.lnData[0], txData.lnData[1], txData.lnData[2], txData.lnData[3]);
//    Serial.printf("Outgoing Callback to %i ID %2X\n", useInterface.devId, txData.requestID);
//    return 0;
//  }
lnTransmitMsg * newData=&txData;
Serial.printf("LB Msg :ReqID %i with %i bytes requested %i RequestTime ", 
newData->requestID, newData->lnMsgSize, newData->reqRecTime); 
   for (int i=0; i<newData->lnMsgSize; i++)
   {
     Serial.print(newData->lnData[i],16);
     Serial.print(" ");
   }
   Serial.println();

  return lnSerial.lnWriteMsg(newData);
  //return 0;
}