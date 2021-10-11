#include <Arduino.h>
#include <Wire.h>

#ifndef SERIAL_OUT
#define SERIAL_OUT SerialUSB
#endif

#include "PCA9685.h"

PCA9685 pwmC0; // Library using default B000000 (A5-A0) i2c address, and default Wire @400kHz
PCA9685 pwmC1=PCA9685(B000010);
PCA9685 pwmC2=PCA9685(B000100);
int i;
uint16_t j;
uint16_t pwms[16];

void setup()
{
  SERIAL_OUT.begin(115200); // Begin Serial and Wire interfaces
  Wire.begin();

  pwmC0.resetDevices(); // Resets all PCA9685 devices on i2c line

  pwmC0.init(); // Initializes module using default totem-pole driver mode, and default phase balancer
  pwmC1.init();
  pwmC2.init();
  pwmC0.setPWMFrequency(100); // Set PWM freq to 500Hz (default is 200Hz, supports 24Hz to 1526Hz)
  pwmC1.setPWMFrequency(100); // Set PWM freq to 500Hz (default is 200Hz, supports 24Hz to 1526Hz)
  pwmC2.setPWMFrequency(100); // Set PWM freq to 500Hz (default is 200Hz, supports 24Hz to 1526Hz)
  i = 0;
  j = 0;
}

void loop()
{

  //SERIAL_OUT.printf("pwms[%d]=%d\n",i,j);

  for(int t=0;t<16;t++){
    pwms[t]=4095;
  }

  pwms[i] = j;


  pwmC0.setChannelsPWM(0, 16, pwms);
  
  for(int t=0;t<16;t++){
    pwms[t]=4095-pwms[t];
  }
  pwmC1.setChannelsPWM(0, 16, pwms);

  for(int t=0;t<16;t++){
    pwms[t]=4095;
  }
  pwms[i] = 4000;
  pwmC2.setChannelsPWM(0, 16, pwms);
  j = (j + 32) % 4096;
  if (j == 0)
  {
  //  
    i = (i + 1) % 16;
  //  SERIAL_OUT.println(i);
  }
  //delay(1);
}