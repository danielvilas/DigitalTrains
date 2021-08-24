#include <Arduino.h>

void setup(){
    Serial.begin(115200);
    pinMode(2,OUTPUT);
    pinMode(4,INPUT);
}

void loop(){
    int v = analogRead(A0);
    Serial.println(v);
    delay(500);
}