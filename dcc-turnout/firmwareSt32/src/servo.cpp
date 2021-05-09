#include "dcc-turnout.h"

ServoStatus servoOut = {1, 0, 0, 0, 0, 0, SERVO_MOVE,0};

void setServoCV(uint16_t CV, uint8_t Value)
{
    switch (CV)
    {
    case CV_SERVO_THROWN:
        servoOut.thrown_pos = Value;
        servoOut.status = SERVO_POS_THROWN;
        SerialUSB.print("Servo Thrown: ");
        SerialUSB.println(Value, DEC);
        break;
    case CV_SERVO_CLOSED:
        servoOut.closed_pos = Value;
        servoOut.status = SERVO_POS_CLOSED;
        SerialUSB.print("Servo Closed: ");
        SerialUSB.println(Value, DEC);
        break;
    case CV_SERVO_SPEED:
        servoOut.speed = Value;
        SerialUSB.print("Servo Speed: ");
        SerialUSB.println(Value, DEC);
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
    // SerialUSB.print("moveServo: ");
    // SerialUSB.print(pos, DEC);
    // SerialUSB.print(" to: ");
    // SerialUSB.print(dest, DEC);
    // SerialUSB.print(" next: ");
    // SerialUSB.println(ret, DEC);
    return ret;
}

void processServo()
{
    // SerialUSB.print(" Direction: ");
    // SerialUSB.println(servoOut.status ? "Closed" : "Thrown");
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
    digitalWrite(SERVO_LED, !power); //On this board is inverted
    digitalWrite(PIN_SERVO_PWR,!power); //Low on
}
