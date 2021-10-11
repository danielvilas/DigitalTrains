#ifndef BOARD_H
#define BOARD_H

//Serial Output
#define SERIAL_OUT Serial

//DCC Pins
#define PIN_ACK 3 // Pin for send ACK on programing Track
#define PIN_DCC 2 //DCC input Signal

//Servo Pins 
#define PIN_SERVO 9 // Pin for Servo PWM
#define PIN_SERVO_PWR 7 // Pin to enable or disable the servo (hardware)
//#define SERVO_LED_NEGATED //uncomment to light on low

//Pins for configuration
#define PIN_RESET 8 // Pin if conecteo to ground, resest the configuration
#define PIN_CFG_BASIC 6
#define PIN_CFG_ADVANCED 5
#define PIN_STATUS 13

//Thrown Closed Outs
#define RELE_EN PA_1
#define THROWN_LED PA_15
#define CLOSED_LED PB_4

#endif