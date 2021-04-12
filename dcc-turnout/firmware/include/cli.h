#ifndef DCCTO_CLI_H
#define DCCTO_CLI_H

#if defined(ARDUINO) && ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

enum DccCliCommands{
    dc_reset='f', //Reset to factory defaults (No param)
    dc_thown='t', //Change to Thrown (If param, change and move)
    dc_close='c', //Change to Close (If param, change and move)
    dc_print='p', //Print config (No param)
    dc_speed='s', //Change speed (Requires Param)
    dc_write='w', //Write to CVs (no param)
    dc_read='r',  //Read CV (no param)
    dc_addr='a',  //Change Addres (requires param)
    dc_inc='+',   //Moves, adds to current position
    dc_dec='-',   //Moves, removes from current position
    dc_error='e', //Error, internal use
    dc_help='h',  //Print Help
};

class DccTurnOutCli
{
private:
    Stream *stream;
    void execute();
    char cmd = 0;
    int arg = -1;
    void printHelp();
    void printCfg();
    void factoryReset();
    void thrown();
    void close();
    void move(int delta);
    void reload();
    void save();
    void addr();
    void speed();
public:
    DccTurnOutCli(Stream *st);
    void process();
};


#endif