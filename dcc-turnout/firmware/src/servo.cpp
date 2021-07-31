#include "dcc-turnout.h"

ServoStatus servoOut = {1, 0, 0, 0, 0, 0, SERVO_MOVE,0};

void setServoCV(uint16_t CV, uint8_t Value)
{
    switch (CV)
    {
    case CV_SERVO_THROWN:
        servoOut.thrown_pos = Value;
        servoOut.status = SERVO_POS_THROWN;
        SERIAL_OUT.print("Servo Thrown: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_CLOSED:
        servoOut.closed_pos = Value;
        servoOut.status = SERVO_POS_CLOSED;
        SERIAL_OUT.print("Servo Closed: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    case CV_SERVO_SPEED:
        servoOut.speed = Value;
        SERIAL_OUT.print("Servo Speed: ");
        SERIAL_OUT.println(Value, DEC);
        break;
    default:
        break;
    }
}

uint8_t moveServo(uint8_t pos, uint8_t dest, uint8_t speed)
{
    uint8_t ret = pos;
    if (pos < dest)
    {
        ret += speed;
        if (ret > dest)
            ret = dest;
    }
    else
    {
        ret -= speed;
        if (ret < dest)
            ret = dest;
    }
    // SERIAL_OUT.print("moveServo: ");
    // SERIAL_OUT.print(pos, DEC);
    // SERIAL_OUT.print(" to: ");
    // SERIAL_OUT.print(dest, DEC);
    // SERIAL_OUT.print(" next: ");
    // SERIAL_OUT.println(ret, DEC);
    return ret;
}

void processServo()
{
    // SERIAL_OUT.print(" Direction: ");
    // SERIAL_OUT.println(servoOut.status ? "Closed" : "Thrown");
    uint8_t desiredPos;

    if (servoOut.status == SERVO_POS_CLOSED)
    {
        desiredPos = servoOut.closed_pos;
    }
    if (servoOut.status == SERVO_POS_THROWN)
    {
        desiredPos = servoOut.thrown_pos;
    }

    if (servoOut.current_pos != desiredPos)
    {
        if (servoOut.intState != SERVO_MOVE)
        {
            servoOut.intState = SERVO_MOVE;
            myServo.attach(PIN_SERVO);
        }
        servoOut.current_pos = moveServo(servoOut.current_pos, desiredPos, servoOut.speed);
    }
    else
    {
        if(servoOut.intState == SERVO_MOVE){
            servoOut.intState=SERVO_POST_MOVE;
            servoOut.stateCounter=0;
        }else if(servoOut.intState == SERVO_POST_MOVE){
            servoOut.stateCounter++;
            if(servoOut.stateCounter==20){ //TODO CV POST_WAIT
                servoOut.intState = SERVO_WAIT;
                myServo.detach();
                servoOut.stateCounter=0;
            }
        }else if (servoOut.intState == SERVO_WAIT)
        {
            servoOut.stateCounter++;
            if(servoOut.stateCounter==100){ //TODO CV OFF_TIME
                servoOut.intState=SERVO_REFRESH;
                myServo.attach(PIN_SERVO);
                servoOut.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
            }
        }else if (servoOut.intState == SERVO_REFRESH)
        {
            servoOut.stateCounter++;
            if(servoOut.stateCounter==10){ //TODO CV OFF_TIME
                servoOut.intState=SERVO_WAIT;
                myServo.detach();
                servoOut.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
            }
        }
    }

    myServo.write(servoOut.current_pos);
    boolean power = false;
    if (servoOut.intState != SERVO_WAIT) power = true;
#ifdef SERVO_LED_NEGATED
    digitalWrite(SERVO_LED, !power); //On this board is inverted
#else
    digitalWrite(SERVO_LED, power);
#endif
    digitalWrite(PIN_SERVO_PWR,!power); //Low on
}
