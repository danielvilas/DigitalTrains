#include "cli.h"
#include "dcc-turnout.h"

//#define CLI_DEBUG
const t_DccTurnOutCliCommand cmdRefresh={"refresh",&RefreshExecute,NULL};
const t_DccTurnOutCliCommand cmdPostMove={"postmove",&PostMoveExecute,&cmdRefresh};
const t_DccTurnOutCliCommand cmdAddr={"address",&AddrExecute,&cmdPostMove};
const t_DccTurnOutCliCommand cmdMove={"move",&MoveExecute,&cmdAddr};
const t_DccTurnOutCliCommand cmdMiddle={"middle",&MiddleExecute,&cmdMove};
const t_DccTurnOutCliCommand cmdSpeed={"speed",&SpeedExecute,&cmdMiddle};
const t_DccTurnOutCliCommand cmdClose={"close",&CloseExecute,&cmdSpeed};
const t_DccTurnOutCliCommand cmdThrow={"throw",&ThrowExecute,&cmdClose};
const t_DccTurnOutCliCommand cmdFactory={"factory",&FactoryResetExecute,&cmdThrow};
const t_DccTurnOutCliCommand cmdSave={"save",&SaveExecute,&cmdFactory};
const t_DccTurnOutCliCommand cmdReload={"reload",&ReloadExecute,&cmdSave};
const t_DccTurnOutCliCommand cmdPrint={"print",&PrintCfgExecute,&cmdReload};
const t_DccTurnOutCliCommand cmdHelp={"help",&HelpExecute,&cmdPrint};


const t_DccTurnOutCliCommand* start = &cmdHelp;

DccTurnOutCli::DccTurnOutCli(Stream *st)
{
    this->stream = st;
    this->_buff[0]=0;
    this->_buffPtr=0;
    this->_args=this->_buff;
    this->_cmdObj=NULL;
    _cmdHelper.stream=stream;

}

void DccTurnOutCli::process()
{
    while (stream->available() > 0)
    {
        char tmp = stream->read();
        if(tmp=='\r')continue;
        stream->print(tmp);
        if(tmp == '\b'){
            _buff[--_buffPtr]=0;
        }else{
            _buff[_buffPtr++]=tmp;
        }


        if(_buffPtr==sizeof(_buff)){
            stream->print("\nerror: Buffer overflow\n");
            _buffPtr=0;
        }
        _buff[_buffPtr]=0;

        if(tmp==' ' && _args==_buff){
            _args=&(_buff[_buffPtr]);
            _buff[_buffPtr-1]=0;

        }

        if (tmp == '\n'){
            _buff[_buffPtr-1]=0;
            const t_DccTurnOutCliCommand* tmpCommand=start;
            do{
                if(isCmd(tmpCommand,_buff)==0){
                    this->_cmdObj=tmpCommand;
                }
                tmpCommand=tmpCommand->next;
            }while(this->_cmdObj==NULL && tmpCommand!=NULL);
            
            if(_cmdObj!=NULL){
                if(_args!=_buff) _cmdHelper.setArgs(_args);
                _cmdHelper._cmd=_buff;
                _cmdObj->execute(&_cmdHelper,_cmdObj);
                _cmdHelper.setArgs(NULL);
            }
            _buffPtr=0;
            _args=_buff;
            this->_cmdObj=NULL;

        }
        
    }
}


u_int8_t DccTurnOutCli::isCmd(const t_DccTurnOutCliCommand* cmdCB, char* cmd){
    return strcmp(cmdCB->_cmd,cmd);
}

void CommandHelper::setArgs(char* args){
    _args=args;
    _argPtr=0;
    _argsSize=strlen(_args);
}

char* CommandHelper::nextArg(){
    if(_args==NULL) return NULL;
    if(_argPtr >= _argsSize) return NULL;

    char* ret = &_args[_argPtr];
    while(_args[_argPtr]!=' ' && _args[_argPtr]!=0)_argPtr++;
    if(_args[_argPtr]==' '){
        _args[_argPtr++]=0;
    }

    return ret;
}
