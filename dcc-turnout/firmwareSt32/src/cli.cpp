#include "cli.h"
#include "dcc-turnout.h"

//#define CLI_DEBUG

DccTurnOutCli::DccTurnOutCli(Stream *st)
{
    this->stream = st;
}

void DccTurnOutCli::execute()
{
    DccCliCommands cmd_cli;
    if (cmd == 0)
    {
        cmd_cli = dc_error;
    }
    else
    {
        cmd_cli = (DccCliCommands)cmd;
    }
#ifdef CLI_DEBUG
    stream->print("Command: ");

    switch (cmd_cli)
    {
    case dc_reset:
        stream->print(" Factory Reset (");
        break;
    case dc_thown:
        stream->print(" Thrown (");
        break;
    case dc_close:
        stream->print(" Close (");
        break;
    case dc_print:
        stream->print(" Print (");
        break;
    case dc_speed:
        stream->print(" Speed (");
        break;
    case dc_write:
        stream->print(" Save (");
        break;
    case dc_read:
        stream->print(" Reload (");
        break;
    case dc_addr:
        stream->print(" Address (");
        break;
    case dc_inc:
        stream->print(" Inc (");
        break;
    case dc_dec:
        stream->print(" Dec (");
        break;
    case dc_error:
        stream->print(" Error (");
        break;
    case dc_help:
        stream->print(" Help (");
        break;

    default:
        break;
    }

    stream->print((char)cmd_cli);
    stream->print(")");
    if (arg >= 0)
    {
        stream->print(" arg: ");
        stream->print(arg);
    }
    stream->println();
#endif

    switch (cmd_cli)
    {
    case dc_reset:
        this->factoryReset();
        break;
    case dc_thown:
        this->thrown();
        break;
    case dc_close:
        this->close();
        break;
    case dc_print:
        this->printCfg();
        break;
    case dc_speed:
        this->speed();
        break;
    case dc_write:
        this->save();
        break;
    case dc_read:
        this->reload();
        break;
    case dc_addr:
        this->addr();
        break;
    case dc_inc:
        this->move(arg);
        break;
    case dc_dec:
        this->move(-arg);
        break;
    case dc_error:
        break;
    case dc_help:
        this->printHelp();
        break;
    case dc_middle:
        arg=90;
        if(servoOut.status==SERVO_POS_CLOSED){
            this->close();
        }
        if(servoOut.status==SERVO_POS_THROWN){
            this->thrown();
        }

        this->printHelp();
        break;

    default:
        break;
    }
}

void DccTurnOutCli::addr()
{
    if (arg > 0)
    {
        uint16_t LSB = 0x00FF & arg;
        uint16_t MSB = 0x00FF & (arg >> 8);
#ifdef CLI_DEBUG
        stream->print("Change adress to ");
        stream->print(arg);
        stream->print(" ");
        stream->print(MSB);
        stream->print(" ");
        stream->println(LSB);
#endif

        Dcc.setCV(CV_ACCESSORY_DECODER_ADDRESS_LSB, LSB);
        Dcc.setCV(CV_ACCESSORY_DECODER_ADDRESS_MSB, MSB);
    }
}

void DccTurnOutCli::speed()
{
    if (arg > 0 && arg < 20)
    {
        servoOut.speed = arg;
    }
}

void DccTurnOutCli::reload()
{
    servoOut.thrown_pos = Dcc.getCV(CV_SERVO_THROWN);
    servoOut.closed_pos = Dcc.getCV(CV_SERVO_CLOSED);
    servoOut.speed = Dcc.getCV(CV_SERVO_SPEED);
}

void DccTurnOutCli::save()
{

    Dcc.setCV(CV_SERVO_THROWN, servoOut.thrown_pos);
    Dcc.setCV(CV_SERVO_CLOSED, servoOut.closed_pos);
    Dcc.setCV(CV_SERVO_SPEED, servoOut.speed);
}

void DccTurnOutCli::printCfg()
{
    stream->print("Address: ");
    stream->println(Dcc.getAddr());
    stream->print("Status: ");
    stream->print(servoOut.status ? "Closed" : "Thrown");
    stream->print(" - ");
    stream->println(servoOut.current_pos);
    stream->print("Thrown: ");
    stream->println(servoOut.thrown_pos);
    stream->print("Closed: ");
    stream->println(servoOut.closed_pos);
    stream->print("Speed: ");
    stream->println(servoOut.speed);
}
void DccTurnOutCli::printHelp()
{
    stream->println("Dcc Turnout");
}

void DccTurnOutCli::factoryReset()
{
    notifyCVResetFactoryDefault();
}
void DccTurnOutCli::close()
{
    servoOut.status = SERVO_POS_CLOSED;
    if (arg >= 0)
    {
        servoOut.closed_pos = arg;
    }
}
void DccTurnOutCli::thrown()
{
    servoOut.status = SERVO_POS_THROWN;
    if (arg >= 0)
    {
        servoOut.thrown_pos = arg;
    }
}

void DccTurnOutCli::move(int delta)
{
    if (arg >= 0)
    {
        if (servoOut.status == SERVO_POS_THROWN)
        {
            servoOut.thrown_pos += delta;
        }
        else
        {
            servoOut.closed_pos += delta;
        }
    }
}

void DccTurnOutCli::process()
{
    while (stream->available() > 0)
    {
        char tmp = stream->read();
        stream->print(tmp);
        if (tmp == '\n')
        {
            this->execute();
            cmd = 0;
            arg = -1;
        }
        if (isDigit(tmp) && cmd != 0)
        {
            if (arg == -1)
                arg = 0;
            arg = arg * 10 + (tmp - '0');
        }
        else if (isAlpha(tmp) || tmp == '+' || tmp == '-')
        {
            if (tmp == 't' || tmp == 'c' || tmp == 'f' || tmp == 'p' || tmp == 's' || tmp == 'w' || tmp == 'r' || tmp == 'a' || tmp == 'e' || tmp == '+' || tmp == '-' || tmp == 'h' || tmp == 'm')
            {
                cmd = tmp;
                arg = -1;
            }
            else
            {
                cmd = 0;
                arg = -1;
            }
        }
    }
}