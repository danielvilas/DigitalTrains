#ifndef BOARD_H
#define BOARD_H



//Serial Output
#define SERIAL_OUT SerialUSB

//DCC Pins
#define PIN_ACK PA6 // Pin for send ACK on programing Track
#define PIN_DCC PA7 //DCC input Signal

//Servo Pins 
#define PIN_SERVO PB9 // Pin for Servo PWM
#define PIN_SERVO_PWR PA3 // Pin to enable or disable the servo (hardware)
#define SERVO_LED_NEGATED //uncomment to light on low

//Pins for configuration
#define PIN_RESET PA4 // Pin if conecteo to ground, resest the configuration
#define PIN_CFG_BASIC PB_6
#define PIN_CFG_ADVANCED PB_5
#define PIN_STATUS PC13

//Thrown Closed Outs
#define RELE_EN PA_1
#define THROWN_LED PA_15
#define CLOSED_LED PB_4

#endif