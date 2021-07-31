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
    SERIAL_OUT.println("notifyCVResetFactoryDefault");
    // Make FactoryDefaultCVIndex non-zero and equal to num CV's to be reset
    // to flag to the loop() function that a reset to Factory Defaults needs to be done
    FactoryDefaultCVIndex = sizeof(FactoryDefaultCVs) / sizeof(CVPair);
};

// This function is called by the NmraDcc library when a DCC ACK needs to be sent
// Calling this function should cause an increased 60ma current drain on the power supply for 6ms to ACK a CV Read
void notifyCVAck(void)
{
    SERIAL_OUT.println("notifyCVAck");

    digitalWrite(PIN_ACK, HIGH);
    delay(6);
    digitalWrite(PIN_ACK, LOW);
}

// Uncomment to print all DCC Packets
//#define NOTIFY_DCC_MSG
#ifdef NOTIFY_DCC_MSG
void notifyDccMsg(DCC_MSG *Msg)
{
    SERIAL_OUT.print("notifyDccMsg: ");
    for (uint8_t i = 0; i < Msg->Size; i++)
    {
        SERIAL_OUT.print(Msg->Data[i], HEX);
        SERIAL_OUT.write(' ');
    }
    SERIAL_OUT.println();
}
#endif

void notifyCVChange(uint16_t CV, uint8_t Value)
{
    SERIAL_OUT.print("notifyCVChange: CV: ");
    SERIAL_OUT.print(CV, DEC);
    SERIAL_OUT.print(" Value: ");
    SERIAL_OUT.println(Value, DEC);

    Value = Value; // Silence Compiler Warnings...
    setServoCV(CV, Value);
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Board Addressing Mode
void notifyDccAccTurnoutBoard(uint16_t BoardAddr, uint8_t OutputPair, uint8_t Direction, uint8_t OutputPower)
{
    SERIAL_OUT.print("notifyDccAccTurnoutBoard: ");
    SERIAL_OUT.print(BoardAddr, DEC);
    SERIAL_OUT.print(" Direction: ");
    SERIAL_OUT.print(Direction ? "Closed" : "Thrown");
    SERIAL_OUT.print(" Output: ");
    SERIAL_OUT.println(OutputPower ? "On" : "Off");
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Output Addressing Mode
void notifyDccAccTurnoutOutput(uint16_t Addr, uint8_t Direction, uint8_t OutputPower)
{
    SERIAL_OUT.print("notifyDccAccTurnoutOutput: Turnout: ");
    SERIAL_OUT.print(Addr, DEC);
    SERIAL_OUT.print(" Direction: ");
    SERIAL_OUT.print(Direction ? "Closed" : "Thrown");
    SERIAL_OUT.print(" Output: ");
    SERIAL_OUT.println(OutputPower ? "On" : "Off");

    if (Addr == Dcc.getAddr())
    {
        servoOut.status = Direction;
    }
}

// This function is called whenever a DCC Signal Aspect Packet is received
void notifyDccSigOutputState(uint16_t Addr, uint8_t State)
{
    SERIAL_OUT.print("notifyDccSigOutputState: ");
    SERIAL_OUT.print(Addr, DEC);
    SERIAL_OUT.print(',');
    SERIAL_OUT.println(State, HEX);
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