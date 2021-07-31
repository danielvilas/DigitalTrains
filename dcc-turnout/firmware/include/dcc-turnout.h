#ifndef DCC_TURNOUT_H
#define DCC_TURNOUT_H

#ifdef ARDUINO_AVR_UNO
#include "board_avr.h"
#endif

#ifdef ARDUINO_GENERIC_F411CEUX
#include "board_blackpill.h"
#endif

#ifndef SERIAL_OUT
#error "No Serial Out Defined"
#endif

#if defined(ARDUINO) && ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

#include <NmraDcc.h>
#include <Servo.h>
#include "cli.h"


extern NmraDcc Dcc;
extern DCC_MSG Packet;
extern DccTurnOutCli cli;

#define CV_SERVO_THROWN 2
#define CV_SERVO_CLOSED 3
#define CV_SERVO_SPEED 4

#define SERVO_POS_CLOSED 1
#define SERVO_POS_THROWN 0

struct CVPair
{
    uint16_t CV;
    uint8_t Value;
};

extern CVPair FactoryDefaultCVs[];

void setServoCV(uint16_t CV, uint8_t Value);
void processReset();

#include "dccServo.h"
extern DccServo dccServo;


#endif