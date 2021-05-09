#include "dcc-turnout.h"
CVPair FactoryDefaultCVs[] =
    {
        {CV_ACCESSORY_DECODER_ADDRESS_LSB, 1},
        {CV_ACCESSORY_DECODER_ADDRESS_MSB, 0},
        {CV_SERVO_CLOSED, 115},
        {CV_SERVO_THROWN, 65},
        {CV_SERVO_SPEED, 5},
};

uint8_t FactoryDefaultCVIndex = 0;

void notifyCVResetFactoryDefault()
{
    SerialUSB.println("notifyCVResetFactoryDefault");
    // Make FactoryDefaultCVIndex non-zero and equal to num CV's to be reset
    // to flag to the loop() function that a reset to Factory Defaults needs to be done
    FactoryDefaultCVIndex = sizeof(FactoryDefaultCVs) / sizeof(CVPair);
};

// This function is called by the NmraDcc library when a DCC ACK needs to be sent
// Calling this function should cause an increased 60ma current drain on the power supply for 6ms to ACK a CV Read
void notifyCVAck(void)
{
    SerialUSB.println("notifyCVAck");

    digitalWrite(PIN_ACK, HIGH);
    delay(6);
    digitalWrite(PIN_ACK, LOW);
}

// Uncomment to print all DCC Packets
//#define NOTIFY_DCC_MSG
#ifdef NOTIFY_DCC_MSG
void notifyDccMsg(DCC_MSG *Msg)
{
    SerialUSB.print("notifyDccMsg: ");
    for (uint8_t i = 0; i < Msg->Size; i++)
    {
        SerialUSB.print(Msg->Data[i], HEX);
        SerialUSB.write(' ');
    }
    SerialUSB.println();
}
#endif

void notifyCVChange(uint16_t CV, uint8_t Value)
{
    SerialUSB.print("notifyCVChange: CV: ");
    SerialUSB.print(CV, DEC);
    SerialUSB.print(" Value: ");
    SerialUSB.println(Value, DEC);

    Value = Value; // Silence Compiler Warnings...
    setServoCV(CV, Value);
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Board Addressing Mode
void notifyDccAccTurnoutBoard(uint16_t BoardAddr, uint8_t OutputPair, uint8_t Direction, uint8_t OutputPower)
{
    SerialUSB.print("notifyDccAccTurnoutBoard: ");
    SerialUSB.print(BoardAddr, DEC);
    SerialUSB.print(" Direction: ");
    SerialUSB.print(Direction ? "Closed" : "Thrown");
    SerialUSB.print(" Output: ");
    SerialUSB.println(OutputPower ? "On" : "Off");
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Output Addressing Mode
void notifyDccAccTurnoutOutput(uint16_t Addr, uint8_t Direction, uint8_t OutputPower)
{
    SerialUSB.print("notifyDccAccTurnoutOutput: Turnout: ");
    SerialUSB.print(Addr, DEC);
    SerialUSB.print(" Direction: ");
    SerialUSB.print(Direction ? "Closed" : "Thrown");
    SerialUSB.print(" Output: ");
    SerialUSB.println(OutputPower ? "On" : "Off");

    if (Addr == Dcc.getAddr())
    {
        servoOut.status = Direction;
    }
}

// This function is called whenever a DCC Signal Aspect Packet is received
void notifyDccSigOutputState(uint16_t Addr, uint8_t State)
{
    SerialUSB.print("notifyDccSigOutputState: ");
    SerialUSB.print(Addr, DEC);
    SerialUSB.print(',');
    SerialUSB.println(State, HEX);
}

void processReset()
{
    if (FactoryDefaultCVIndex && Dcc.isSetCVReady())
    {
        FactoryDefaultCVIndex--; // Decrement first as initially it is the size of the array
        Dcc.setCV(FactoryDefaultCVs[FactoryDefaultCVIndex].CV, FactoryDefaultCVs[FactoryDefaultCVIndex].Value);
        notifyCVChange(FactoryDefaultCVs[FactoryDefaultCVIndex].CV, FactoryDefaultCVs[FactoryDefaultCVIndex].Value);
    }
}