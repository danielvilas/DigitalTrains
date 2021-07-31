#include <Arduino.h>
#include "dcc-turnout.h"

// This Example shows how to use the library as a DCC Accessory Decoder or a DCC Signalling Decoder
// It responds to both the normal DCC Turnout Control packets and the newer DCC Signal Aspect packets
// You can also print every DCC packet by uncommenting the "#define NOTIFY_DCC_MSG" line below

NmraDcc Dcc;
DCC_MSG Packet;

DccTurnOutCli cli = DccTurnOutCli(&SERIAL_OUT);
Servo myServo;

void setup()
{
    SERIAL_OUT.begin(115200);

    // Configure the DCC CV Programing ACK pin for an output
    pinMode(PIN_ACK, OUTPUT);
    pinMode(PIN_SERVO, OUTPUT);
    pinMode(PIN_SERVO_PWR, OUTPUT);

    SERIAL_OUT.println("NMRA DCC Example 1");

    // Setup which External Interrupt, the Pin it's associated with that we're using and enable the Pull-Up
    Dcc.pin(PIN_DCC, 1);

    // Call the main DCC Init function to enable the DCC Receiver
    Dcc.init(MAN_ID_DIY, 10, CV29_ACCESSORY_DECODER | CV29_OUTPUT_ADDRESS_MODE, 0);

    pinMode(PIN_RESET, INPUT_PULLUP);
    if (!digitalRead(PIN_RESET))
    {
        notifyCVResetFactoryDefault();
    }
    else
    {

        setServoCV(CV_SERVO_THROWN, Dcc.getCV(CV_SERVO_THROWN));
        setServoCV(CV_SERVO_CLOSED, Dcc.getCV(CV_SERVO_CLOSED));
        setServoCV(CV_SERVO_SPEED, Dcc.getCV(CV_SERVO_SPEED));
    }
    SERIAL_OUT.println("Init Done");
    pinMode(SERVO_LED,OUTPUT);
}

void loop()
{
    // You MUST call the NmraDcc.process() method frequently from the Arduino loop() function for correct library operation
    Dcc.process();
    cli.process();

    processReset();
    long cMillis = millis();
    if (cMillis - servoOut.lastPosMillis > 50)
    {
        processServo();
        servoOut.lastPosMillis = cMillis;
    }
}