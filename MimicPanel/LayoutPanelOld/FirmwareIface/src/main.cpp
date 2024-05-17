#include <Arduino.h>
#include <Wire.h>
#define N_SERVOS 8

#define ADDR 9


void requestEvent()
{
    Wire.write(ADDR);  // as expected by master
}

void setup()
{
    //Wire.begin();         // join i2c bus (address optional for master)
    Serial.begin(115200); // start serial for output
    Wire.begin(9);                // join i2c bus with address #8
    Wire.onRequest(requestEvent); // register event
}




void loop()
{
    return;
   
}
