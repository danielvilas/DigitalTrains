#include "panel_controller.h"


unsigned long timer_i2c;

uint16_t getStatusFrom(int addr){
    Wire.requestFrom(addr, 2); // request 6 bytes from slave device #8
    timer_i2c = millis() + 500;
    while (Wire.available() < 2 && timer_i2c > millis())
        ;
    timer_i2c = 0;
    if (Wire.available() >= 2)
    {
        uint8_t low = Wire.read();
        uint8_t high = Wire.read();
        uint16_t ret = ((high << 8) & 0xff00)| (low & 0x00ff);
        //Serial.print("data: ");
        //Serial.println(ret, HEX);
        return ret;
    }
    else
    {
        Serial.print("Time Out:");
        Serial.println(Wire.available());
    }
    return 0;
}


void i2c_process(){
     if (timer_i2c > 0 && timer_i2c > millis())return;
    timer_i2c = 0;
    uint16_t data = getStatusFrom(8);
    if(data !=0){
        uint16_t tmp = data;
        for(int i=0;i<N_SERVOS;i++){
            pointStatus st = (pointStatus)(tmp & 0x0003);
            tmp >>=2; 
/*            Serial.print ("Servo (");
            Serial.print (i+1);
            Serial.print (") status: ");*/
            switch (st)
            {
            case UNCHANGED:
                //Serial.println("Unchanged");
                break;
             case CLOSED:
                //Serial.println("Closed");
                push_Event_data(POINT_CLOSED,i);
                break;
            case TRHOWN:
                //Serial.println("Thrown");
                push_Event_data(POINT_THROWN,i);
                break;           
            default:
                //Serial.println("UNKNOWN");
                break;
            };
        }
    }

    timer_i2c = millis() + 500;
}

EVENT_HANDLER(pointLog,event){
  if (event->event == POINT_CLOSED || POINT_THROWN)
  {
    Serial.print("Servo (");
    Serial.print(event->param + 1);
    Serial.print(") status: ");
    if(event->event==POINT_CLOSED){
      Serial.println("Closed");
    }else{
      Serial.println("Thrown");
    }
  }
}