#include "dcc-turnout.h"

ServoStatus servoOut = {1, 0, 0, 0, 0, 0};

void setServoCV(uint16_t CV, uint8_t Value)
{
    switch (CV)
    {
    case CV_SERVO_THROWN:
        servoOut.thrown_pos = Value;
        servoOut.status = SERVO_POS_THROWN;
        Serial.print("Servo Thrown: ");
        Serial.println(Value, DEC);
        break;
    case CV_SERVO_CLOSED:
        servoOut.closed_pos = Value;
        servoOut.status = SERVO_POS_CLOSED;
        Serial.print("Servo Closed: ");
        Serial.println(Value, DEC);
        break;
    case CV_SERVO_SPEED:
        servoOut.speed = Value;
        Serial.print("Servo Speed: ");
        Serial.println(Value, DEC);
        break;
    default:
        break;
    }
}

uint8_t moveServo(uint8_t pos, uint8_t dest, uint8_t speed){
    uint8_t ret = pos;
    if(pos<dest){
        ret+=speed;
        if(ret> dest)
            ret = dest;
    }else{
        ret-=speed;
        if(ret< dest)
            ret = dest;
    }
    // Serial.print("moveServo: ");
    // Serial.print(pos, DEC);
    // Serial.print(" to: ");
    // Serial.print(dest, DEC);
    // Serial.print(" next: ");
    // Serial.println(ret, DEC);
    return ret;
}

void processServo(){
    // Serial.print(" Direction: ");
    // Serial.println(servoOut.status ? "Closed" : "Thrown");

    if(servoOut.status == SERVO_POS_CLOSED){
        if(servoOut.current_pos!=servoOut.closed_pos){
            servoOut.current_pos= moveServo(servoOut.current_pos,servoOut.closed_pos, servoOut.speed);
        }
    }
    if(servoOut.status == SERVO_POS_THROWN){
        if(servoOut.current_pos!=servoOut.thrown_pos){
            servoOut.current_pos= moveServo(servoOut.current_pos,servoOut.thrown_pos, servoOut.speed);
        }
    }
    myServo.write(servoOut.current_pos);
}
