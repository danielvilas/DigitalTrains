#ifndef BOARD_H
#define BOARD_H

//Serial Output
#define SERIAL_OUT Serial1

//DCC Pins
#define PIN_ACK PB0 // Pin for send ACK on programing Track
#define PIN_DCC PB1 //DCC input Signal

//Servo Pins 
#define PIN_SERVO PA0 // Pin for Servo PWM
#define PIN_SERVO_PWR PA4 // Pin to enable or disable the servo (hardware)
#define SERVO_LED_NEGATED //uncomment to light on low
//#define SERVO_POWER_NEGATED //uncomment to light on low

//Pins for configuration
//#define PIN_RESET PB_3 // Pin if conected to ground, resest the configuration
#define PIN_CFG_BASIC PB6
#define PIN_CFG_ADVANCED PB5
#define PIN_STATUS PB7

//Thrown Closed Outs
#define RELE_EN PA1
//#define RELE_EN_NEGATED
#define THROWN_LED PA15
//#define THROWN_LED_NEGATED
#define CLOSED_LED PB4
//#define CLOSED_LED_NEGATED

#endif