#include "cli.h"
#include "dcc-turnout.h"


void DebugExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    helper->stream->print("Executing DtoccDebug ");
    helper->stream->println(helper->_cmd);
    char * arg= helper->nextArg();
    while(arg!=NULL){
        helper->stream->print("ARG: ");
        helper->stream->println(arg);
        arg=helper->nextArg();
    }

}

void PrintCfgExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;
    stream->print("\tAddress: ");
    stream->println(Dcc.getAddr());
    stream->print("\tStatus: ");
    stream->print(dccServo.status.status ? "Closed" : "Thrown");
    stream->print(" - ");
    stream->println(dccServo.status.current_pos);
    stream->print("\tThrown: ");
    stream->println(dccServo.status.thrown_pos);
    stream->print("\tClosed: ");
    stream->println(dccServo.status.closed_pos);
    stream->print("\tSpeed: ");
    stream->println(dccServo.status.speed);
    stream->print("\tRefresh Interval: ");
    stream->println(dccServo.status.refreshInterval);
    stream->print("\tRefresh On time: ");
    stream->println(dccServo.status.refreshTime);
    stream->print("\tPost-Move On time: ");
    stream->println(dccServo.status.postMoveTime);
}

void HelpExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    stream->println("Dcc Turnout");
    stream->println("Commands:");
    const t_DccTurnOutCliCommand* tmpCommand=self;
    do{
        stream->print("\t");
        stream->println(tmpCommand->_cmd);
        tmpCommand=tmpCommand->next;
    }while(tmpCommand!=NULL);
    
}

void ReloadExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    setServoCV(CV_SERVO_THROWN,Dcc.getCV(CV_SERVO_THROWN));
    setServoCV(CV_SERVO_CLOSED,Dcc.getCV(CV_SERVO_CLOSED));
    setServoCV(CV_SERVO_SPEED,Dcc.getCV(CV_SERVO_SPEED));

    setServoCV(CV_SERVO_POST_MOVE_TIME,Dcc.getCV(CV_SERVO_POST_MOVE_TIME));
    setServoCV(CV_SERVO_REFERSH_INTERVAL, Dcc.getCV(CV_SERVO_REFERSH_INTERVAL));
    setServoCV(CV_SERVO_REFRESH_TIME, Dcc.getCV(CV_SERVO_REFRESH_TIME));
}

void SaveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    Dcc.setCV(CV_SERVO_THROWN, dccServo.status.thrown_pos);
    Dcc.setCV(CV_SERVO_CLOSED, dccServo.status.closed_pos);
    Dcc.setCV(CV_SERVO_SPEED, dccServo.status.speed);
    Dcc.setCV(CV_SERVO_POST_MOVE_TIME, dccServo.status.postMoveTime);
    Dcc.setCV(CV_SERVO_REFERSH_INTERVAL, dccServo.status.refreshInterval);
    Dcc.setCV(CV_SERVO_REFRESH_TIME, dccServo.status.refreshTime);
    
}


void FactoryResetExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

     notifyCVResetFactoryDefault();
}


void ThrowExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    dccServo.status.status = SERVO_POS_THROWN;
    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.thrown_pos = param;
    }
    stream->print("Thrown Pos: ");
    stream->println(dccServo.status.thrown_pos);
}

void CloseExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    dccServo.status.status = SERVO_POS_CLOSED;
    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.closed_pos = param;
    }
    stream->print("Closed Pos: ");
    stream->println(dccServo.status.closed_pos);
}

void SpeedExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.speed = param;
    }
    stream->print("Speed: ");
    stream->println(dccServo.status.speed);
}



void MiddleExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;
    if(dccServo.status.status == SERVO_POS_CLOSED){
        dccServo.status.closed_pos = 90;
        stream->print("Closed Pos: ");
        stream->println(dccServo.status.closed_pos);
    }
    if(dccServo.status.status == SERVO_POS_THROWN){
        dccServo.status.thrown_pos = 90;
        stream->print("Thrown Pos: ");
        stream->println(dccServo.status.closed_pos);
    }
}

void MoveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;
    char* arg = helper->nextArg();
    if(arg!=NULL){
        int8_t param = atoi(arg);
        if(dccServo.status.status == SERVO_POS_CLOSED){
            dccServo.status.closed_pos +=param;
            stream->print("Closed Pos: ");
            stream->println(dccServo.status.closed_pos);
        }
        if(dccServo.status.status == SERVO_POS_THROWN){
            dccServo.status.thrown_pos +=param;
            stream->print("Thrown Pos: ");
            stream->println(dccServo.status.closed_pos);
        }
    }
}

void AddrExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;
    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int16_t param = atoi(arg);

    
        uint16_t LSB = 0x00FF & param;
        uint16_t MSB = 0x00FF & (param >> 8);
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
    u_int16_t addr=Dcc.getAddr();
    stream->print ("Addres: ");
    stream->println(addr);
}

void RefreshExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.refreshInterval = param;
    }
    stream->print("Refresh Interval: ");
    stream->println(dccServo.status.refreshInterval);

    arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.refreshTime = param;
    }
    stream->print("Refresh On-Time: ");
    stream->println(dccServo.status.refreshTime);
}

void PostMoveExecute(CommandHelper *helper, const t_DccTurnOutCliCommand* self){
    Stream* stream = helper->stream;

    char* arg = helper->nextArg();
    if(arg!=NULL){
        u_int8_t param = atoi(arg);
        dccServo.status.postMoveTime = param;
    }
    stream->print("PostMove On-Time: ");
    stream->println(dccServo.status.postMoveTime);
}