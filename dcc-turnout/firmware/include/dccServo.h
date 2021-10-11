#ifndef DCC_SERVO_H
#define DCC_SERVO_H
#include "dcc-turnout.h"

enum servoInternalState{
    SERVO_WAIT,
    SERVO_MOVE,
    SERVO_POST_MOVE,
    SERVO_REFRESH,
};

struct ServoStatus
{
    uint8_t status; //Thrown or closed
    uint8_t current_pos;
    uint8_t thrown_pos;
    uint8_t closed_pos;
    uint8_t speed;
    long lastPosMillis;
    servoInternalState intState;
    uint8_t stateCounter;
};


class DccServo{
    private:
    Servo servo;
    uint8_t servo_pin;
    uint8_t servo_led;
    uint8_t servo_pwr;
    uint8_t moveServo(uint8_t pos, uint8_t dest, uint8_t speed);
    public:
    DccServo( uint8_t servo_pin, uint8_t servo_led, uint8_t servo_pwr);
    void processServo();
    void servo_en(boolean);
    ServoStatus status;
};

#endif