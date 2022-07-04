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
    return ret;
}

//Status is high if thrown
void rele_en(boolean status){
#ifdef RELE_EN_NEGATED
    digitalWrite(RELE_EN,!status);
#else
    digitalWrite(RELE_EN,status);
#endif


//Thrown led
#ifdef THROWN_LED_NEGATED
    digitalWrite(THROWN_LED,!status);
#else
    digitalWrite(THROWN_LED,status);
#endif
//Closes led
#ifdef CLOSED_LED_NEGATED
    digitalWrite(CLOSED_LED,status);
#else
    digitalWrite(CLOSED_LED,!status);
#endif


}



void DccServo::servo_en(bool power){
#ifdef SERVO_LED_NEGATED
    digitalWrite(this->servo_led, !power); //On this board is inverted
#else
    digitalWrite(this->servo_led, power);
#endif
#ifdef SERVO_POWER_NEGATED
    digitalWrite(this->servo_pwr,!power); //Low on
#else
    digitalWrite(this->servo_pwr,power); //Low on
#endif
}

void DccServo::processServo(){
        // SERIAL_OUT.print(" Direction: ");
    // SERIAL_OUT.println(status.status ? "Closed" : "Thrown");
    uint8_t desiredPos;

    if (status.status == SERVO_POS_CLOSED)
    {
        desiredPos = status.closed_pos;
        rele_en(LOW);

    }
    if (status.status == SERVO_POS_THROWN)
    {
        desiredPos = status.thrown_pos;
        rele_en(HIGH);
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
            if(status.refreshInterval!=0){
                status.intState=SERVO_POST_MOVE;
                status.stateCounter=0;
            }
        }else if(status.intState == SERVO_POST_MOVE){
            status.stateCounter++;
            if(status.stateCounter==status.postMoveTime){
                status.intState = SERVO_WAIT;
                this->servo.detach();
                status.stateCounter=0;
            }
        }else if (status.intState == SERVO_WAIT)
        {
            if(status.refreshInterval>0){
                status.stateCounter++;
                if(status.stateCounter==status.refreshInterval){ 
                    status.intState=SERVO_REFRESH;
                    this->servo.attach(this->servo_pin);
                    status.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
                }
            }
            
        }else if (status.intState == SERVO_REFRESH)
        {
            status.stateCounter++;
            if(status.stateCounter==status.refreshTime){
                status.intState=SERVO_WAIT;
                this->servo.detach();
                status.stateCounter=0; //TODO CV ON_TIME (CV_OFF - CV_ON)
            }
        }
    }

    this->servo.write(status.current_pos);
    boolean power = false;
    if (status.intState != SERVO_WAIT || status.refreshInterval==0) power = true;
    servo_en(power);
}