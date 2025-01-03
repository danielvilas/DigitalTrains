#include "dcc-turnout.h"


void setServoCV(uint16_t CV, uint8_t Value)
{
    switch (CV)
    {
    case CV_SERVO_THROWN:
        dccServo.status.thrown_pos = Value;
        dccServo.status.status = SERVO_POS_THROWN;
        SERIAL_OUT.print("Servo Thrown: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_CLOSED:
        dccServo.status.closed_pos = Value;
        dccServo.status.status = SERVO_POS_CLOSED;
        SERIAL_OUT.print("Servo Closed: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_SPEED:
        dccServo.status.speed = Value;
        SERIAL_OUT.print("Servo Speed: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_POST_MOVE_TIME:
        dccServo.status.postMoveTime = Value;
        SERIAL_OUT.print("PostMove On-Time: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_REFERSH_INTERVAL:
        dccServo.status.refreshInterval = Value;
        SERIAL_OUT.print("Refresh Interval: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_REFRESH_TIME:
        dccServo.status.refreshTime = Value;
        SERIAL_OUT.print("Refresh On-Time: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    default:
        break;
    }
}

