#ifndef DCCTO_CLI_H
#define DCCTO_CLI_H

#if defined(ARDUINO) && ARDUINO >= 100
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

class CommandHelper{
private:
    char* _args=NULL;
    uint8_t _argsSize=0;
    uint8_t _argPtr=0;

public:
    void setArgs(char* args);
    char* nextArg();

    char* _cmd;
    Stream *stream;
};

typedef struct s_DccTurnOutCliCommand{
    const char* _cmd;
    void (*execute)(CommandHelper*,const s_DccTurnOutCliCommand*);
    const s_DccTurnOutCliCommand* next;
} t_DccTurnOutCliCommand;

class DccTurnOutCli
{
private:
    Stream *stream;

    uint8_t isCmd(const t_DccTurnOutCliCommand* cmdCB, char* cb);
    char _buff[32];
    uint8_t _buffPtr;
    char* _args;
    const t_DccTurnOutCliCommand* _cmdObj;
    CommandHelper _cmdHelper;

public:
    DccTurnOutCli(Stream *st);
    void process();
};

void DebugExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void PrintCfgExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void HelpExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void ReloadExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void SaveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void FactoryResetExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void ThrowExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void CloseExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void SpeedExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void MiddleExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void MoveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void AddrExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void RefreshExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void PostMoveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
void VersionExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self);
#endif