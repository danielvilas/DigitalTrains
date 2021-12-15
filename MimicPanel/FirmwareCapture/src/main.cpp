#include <Arduino.h>

#include <Wire.h>

#define LED_CAPTURE A7

#define PIN_1_THROWN 3
#define PIN_1_CLOSED 2
#define PIN_2_THROWN 5
#define PIN_2_CLOSED 4
#define PIN_3_THROWN 7
#define PIN_3_CLOSED 6
#define PIN_4_THROWN 9
#define PIN_4_CLOSED 8

#define PIN_5_THROWN 11
#define PIN_5_CLOSED 10
#define PIN_6_THROWN 13 //Disable
#define PIN_6_CLOSED 12
#define PIN_7_THROWN A1 // A1
#define PIN_7_CLOSED A0 //A0
#define PIN_8_THROWN A3 //A3
#define PIN_8_CLOSED A2 // A2

enum pointStatus
{
    UNCHANGED = 0, //b00
    CLOSED = 2,    //10
    TRHOWN = 3     //11
};

typedef struct servoPins_s
{
    pointStatus status;
    uint8_t pinThrown;
    uint8_t pinClosed;
    unsigned lastCaptured;
} servoPins_t;

#define N_SERVOS 8
servoPins_t servos[] = {
    {UNCHANGED, PIN_1_THROWN, PIN_1_CLOSED, 0},
    {UNCHANGED, PIN_2_THROWN, PIN_2_CLOSED, 0},
    {UNCHANGED, PIN_3_THROWN, PIN_3_CLOSED, 0},
    {UNCHANGED, PIN_4_THROWN, PIN_4_CLOSED, 0},
    {UNCHANGED, PIN_5_THROWN, PIN_5_CLOSED, 0},
    {UNCHANGED, PIN_6_THROWN, PIN_6_CLOSED, 0},
    {UNCHANGED, PIN_7_THROWN, PIN_7_CLOSED, 0},
    {UNCHANGED, PIN_8_THROWN, PIN_8_CLOSED, 0}};

unsigned lastCaptured;

void requestEvent()
{
    uint16_t ret = 0;

    for (int i = 0; i < N_SERVOS; i++)
    {
        ret |= (servos[i].status)<<i*2;
    }

    uint8_t low = ret&(0x00ff);
    uint8_t high= (ret&(0xff00))>> 8;
    Wire.write(low);  // as expected by master
    Wire.write(high);

    for (int i = 0; i < N_SERVOS; i++)
    {
        servos[i].status=UNCHANGED;
    }

}

void setup()
{
    pinMode(LED_CAPTURE, OUTPUT);
    digitalWrite(LED_CAPTURE, LOW);

    for (int i = 0; i < N_SERVOS; i++)
    {
        pinMode(servos[i].pinClosed, INPUT_PULLUP);
        pinMode(servos[i].pinThrown, INPUT_PULLUP);
    }
    Wire.begin(8);                // join i2c bus with address #8
    Wire.onRequest(requestEvent); // register event
}

void loop()
{
    if (lastCaptured > millis())
    {
        return;
    }
    digitalWrite(LED_CAPTURE, LOW);
    for (int i = 0; i < N_SERVOS; i++)
    {
        if (digitalRead(servos[i].pinClosed) == 0)
        {
            lastCaptured = millis() + 500;
            digitalWrite(LED_CAPTURE, HIGH);
            servos[i].status = CLOSED;
            continue;
        }
        if (digitalRead(servos[i].pinThrown) == 0)
        {
            lastCaptured = millis() + 500;
            digitalWrite(LED_CAPTURE, HIGH);
            servos[i].status = TRHOWN;
            continue;
        }
    }
}