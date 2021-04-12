#ifndef DCC_TURNOUT_H
#define DCC_TURNOUT_H

#if defined(ARDUINO) && ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

#include <NmraDcc.h>
#include <Servo.h>
#include "cli.h"

#define PIN_RESET 8
#define PIN_ACK 3

extern NmraDcc Dcc;
extern DCC_MSG Packet;
extern DccTurnOutCli cli;

#define CV_SERVO_THROWN 2
#define CV_SERVO_CLOSED 3
#define CV_SERVO_SPEED 4

#define SERVO_POS_CLOSED 1
#define SERVO_POS_THROWN 0


extern Servo myServo;

struct CVPair
{
    uint16_t CV;
    uint8_t Value;
};

extern CVPair FactoryDefaultCVs[];

struct ServoStatus
{
    uint8_t status; //Thrown or closed
    uint8_t current_pos;
    uint8_t thrown_pos;
    uint8_t closed_pos;
    uint8_t speed;
    long lastPosMillis;
};
extern ServoStatus servoOut;
void setServoCV(uint16_t CV, uint8_t Value);
void processServo();

void processReset();


#endif