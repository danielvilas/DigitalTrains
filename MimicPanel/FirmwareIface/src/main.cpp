#include <Arduino.h>
#include <Wire.h>
#define N_SERVOS 4
enum pointStatus
{
    UNCHANGED = 0, //b00
    CLOSED = 2,    //10
    TRHOWN = 3     //11
};

void setup()
{
    Wire.begin();         // join i2c bus (address optional for master)
    Serial.begin(115200); // start serial for output
}

unsigned long timer;

uint16_t getStatusFrom(int addr){
    Wire.requestFrom(addr, 2); // request 6 bytes from slave device #8
    timer = millis() + 500;
    while (Wire.available() < 2 && timer > millis())
        ;
    timer = 0;
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

void loop()
{
    if (timer > 0 && timer > millis())return;
    timer = 0;
    uint16_t data = getStatusFrom(8);
    if(data !=0){
        uint16_t tmp = data;
        for(int i=0;i<N_SERVOS;i++){
            pointStatus st = (pointStatus)(tmp & 0x0003);
            tmp >>=2; 
            Serial.print ("Servo (");
            Serial.print (i+1);
            Serial.print (") status: ");
            switch (st)
            {
            case UNCHANGED:
                Serial.println("Unchanged");
                break;
             case CLOSED:
                Serial.println("Closed");
                break;
            case TRHOWN:
                Serial.println("Thrown");
                break;           
            default:
                Serial.println("UNKNOWN");
                break;
            };
        }
    }

    timer = millis() + 500;
}
