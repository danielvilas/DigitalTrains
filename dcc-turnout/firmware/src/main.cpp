#include <Arduino.h>
#include <NmraDcc.h>
#include <Servo.h>

// This Example shows how to use the library as a DCC Accessory Decoder or a DCC Signalling Decoder
// It responds to both the normal DCC Turnout Control packets and the newer DCC Signal Aspect packets
// You can also print every DCC packet by uncommenting the "#define NOTIFY_DCC_MSG" line below

NmraDcc Dcc;
DCC_MSG Packet;

#define CV_SERVO_THROWN 2
#define CV_SERVO_CLOSED 3
#define CV_SERVO_SPEED 4

#define PIN_RESET 8
#define SERVO_POS_CLOSED 1
#define SERVO_POS_THROWN 0

Servo myServo;

struct CVPair
{
    uint16_t CV;
    uint8_t Value;
};

CVPair FactoryDefaultCVs[] =
    {
        {CV_ACCESSORY_DECODER_ADDRESS_LSB, 1},
        {CV_ACCESSORY_DECODER_ADDRESS_MSB, 0},
        {CV_SERVO_THROWN, 15},
        {CV_SERVO_CLOSED, 165},
        {CV_SERVO_SPEED, 5},
};

struct ServoStatus
{
    uint8_t status; //Thrown or closed
    uint8_t current_pos;
    uint8_t thrown_pos;
    uint8_t closed_pos;
    uint8_t speed;
    long lastPosMillis;
} servoOut = {0, 0, 0, 0, 0, 0};

uint8_t FactoryDefaultCVIndex = 0;

void notifyCVResetFactoryDefault()
{
    Serial.println("notifyCVResetFactoryDefault");
    // Make FactoryDefaultCVIndex non-zero and equal to num CV's to be reset
    // to flag to the loop() function that a reset to Factory Defaults needs to be done
    FactoryDefaultCVIndex = sizeof(FactoryDefaultCVs) / sizeof(CVPair);
};

const int DccAckPin = 3;

// This function is called by the NmraDcc library when a DCC ACK needs to be sent
// Calling this function should cause an increased 60ma current drain on the power supply for 6ms to ACK a CV Read
void notifyCVAck(void)
{
    Serial.println("notifyCVAck");

    digitalWrite(DccAckPin, HIGH);
    delay(6);
    digitalWrite(DccAckPin, LOW);
}

// Uncomment to print all DCC Packets
//#define NOTIFY_DCC_MSG
#ifdef NOTIFY_DCC_MSG
void notifyDccMsg(DCC_MSG *Msg)
{
    Serial.print("notifyDccMsg: ");
    for (uint8_t i = 0; i < Msg->Size; i++)
    {
        Serial.print(Msg->Data[i], HEX);
        Serial.write(' ');
    }
    Serial.println();
}
#endif

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

void notifyCVChange(uint16_t CV, uint8_t Value)
{
    Serial.print("notifyCVChange: CV: ");
    Serial.print(CV, DEC);
    Serial.print(" Value: ");
    Serial.println(Value, DEC);

    Value = Value; // Silence Compiler Warnings...
    setServoCV(CV, Value);
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Board Addressing Mode
void notifyDccAccTurnoutBoard(uint16_t BoardAddr, uint8_t OutputPair, uint8_t Direction, uint8_t OutputPower)
{
    Serial.print("notifyDccAccTurnoutBoard: ");
    Serial.print(BoardAddr, DEC);
    Serial.print(" Direction: ");
    Serial.print(Direction ? "Closed" : "Thrown");
    Serial.print(" Output: ");
    Serial.println(OutputPower ? "On" : "Off");
}

// This function is called whenever a normal DCC Turnout Packet is received and we're in Output Addressing Mode
void notifyDccAccTurnoutOutput(uint16_t Addr, uint8_t Direction, uint8_t OutputPower)
{
    Serial.print("notifyDccAccTurnoutOutput: Turnout: ");
    Serial.print(Addr, DEC);
    Serial.print(" Direction: ");
    Serial.print(Direction ? "Closed" : "Thrown");
    Serial.print(" Output: ");
    Serial.println(OutputPower ? "On" : "Off");

    if(Addr==Dcc.getAddr()){
        servoOut.status=Direction;
    }
}

// This function is called whenever a DCC Signal Aspect Packet is received
void notifyDccSigOutputState(uint16_t Addr, uint8_t State)
{
    Serial.print("notifyDccSigOutputState: ");
    Serial.print(Addr, DEC);
    Serial.print(',');
    Serial.println(State, HEX);
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

void setup()
{
    Serial.begin(115200);

    // Configure the DCC CV Programing ACK pin for an output
    pinMode(DccAckPin, OUTPUT);

    Serial.println("NMRA DCC Example 1");

    // Setup which External Interrupt, the Pin it's associated with that we're using and enable the Pull-Up
    Dcc.pin(0, 2, 1);

    // Call the main DCC Init function to enable the DCC Receiver
    Dcc.init(MAN_ID_DIY, 10, CV29_ACCESSORY_DECODER | CV29_OUTPUT_ADDRESS_MODE, 0);

    pinMode(PIN_RESET, INPUT_PULLUP);
    if (!digitalRead(PIN_RESET))
    {
        notifyCVResetFactoryDefault();
    }
    else
    {
        setServoCV(CV_SERVO_CLOSED, Dcc.getCV(CV_SERVO_CLOSED));
        setServoCV(CV_SERVO_THROWN, Dcc.getCV(CV_SERVO_THROWN));
        setServoCV(CV_SERVO_SPEED, Dcc.getCV(CV_SERVO_SPEED));
    }
    myServo.attach(9);
    Serial.println("Init Done");
}


void loop()
{
    // You MUST call the NmraDcc.process() method frequently from the Arduino loop() function for correct library operation
    Dcc.process();

    if (FactoryDefaultCVIndex && Dcc.isSetCVReady())
    {
        FactoryDefaultCVIndex--; // Decrement first as initially it is the size of the array
        Dcc.setCV(FactoryDefaultCVs[FactoryDefaultCVIndex].CV, FactoryDefaultCVs[FactoryDefaultCVIndex].Value);
        notifyCVChange(FactoryDefaultCVs[FactoryDefaultCVIndex].CV, FactoryDefaultCVs[FactoryDefaultCVIndex].Value);
    }

    long cMillis = millis();
    if (cMillis - servoOut.lastPosMillis >50){
        processServo();
        servoOut.lastPosMillis=cMillis;
    } 
}