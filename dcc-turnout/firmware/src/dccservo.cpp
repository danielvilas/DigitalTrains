#include "dcc-turnout.h"

DccServo::DccServo(uint8_t servo_pin, uint8_t servo_led, uint8_t servo_pwr){
    this->servo=Servo();
    this->servo_pin=servo_pin;
    this->servo_led=servo_led;
    this->servo_pwr=servo_pwr;
}

uint8_t DccServo::moveServo(uint8_t pos, uint8_t dest, uint8_t speed)
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


void DccServo::processServo(){
        // SERIAL_OUT.print(" Direction: ");
    // SERIAL_OUT.println(status.status ? "Closed" : "Thrown");
    uint8_t desiredPos;

    if (status.status == SERVO_POS_CLOSED)
    {
        desiredPos = status.closed_pos;
    }
    if (status.status == SERVO_POS_THROWN)
    {
        desiredPos = status.thrown_pos;
    }

    if (status.current_pos != desiredPos)
    {
        if (status.intState != SERVO_MOVE)
        {
            status.intState = SERVO_MOVE;
            this->servo.attach(this->servo_pin);
        }
        status.current_pos = moveServo(status.current_pos, desiredPos, status.speed);
    }
    else
    {
        if(status.intState == SERVO_MOVE){
            status.intState=SERVO_POST_MOVE;
            status.stateCounter=0;
        }else if(status.intState == SERVO_POST_MOVE){
            status.stateCounter++;
            if(status.stateCounter==20){ //TODO CV POST_WAIT
                status.intState = SERVO_WAIT;
                this->servo.detach();
                status.stateCounter=0;
            }
        }else if (status.intState == SERVO_WAIT)
        {
            status.stateCounter++;
            if(status.stateCounter==100){ //TODO CV OFF_TIME
                status.intState=SERVO_REFRESH;
                this->servo.attach(this->servo_pin);
                status.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
            }
        }else if (status.intState == SERVO_REFRESH)
        {
            status.stateCounter++;
            if(status.stateCounter==10){ //TODO CV OFF_TIME
                status.intState=SERVO_WAIT;
                this->servo.detach();
                status.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
            }
        }
    }

    this->servo.write(status.current_pos);
    boolean power = false;
    if (status.intState != SERVO_WAIT) power = true;
#ifdef SERVO_LED_NEGATED
    digitalWrite(this->servo_led, !power); //On this board is inverted
#else
    digitalWrite(this->servo_led, power);
#endif
    digitalWrite(this->servo_pwr,!power); //Low on
}