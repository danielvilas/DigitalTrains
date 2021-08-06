#ifndef __TC_MENU_H__
#define __TC_MENU_H__

#include <menu.h>
#include "deboucedencoderIn.h"
#include "key32In.h"
#include <menuIO/chainStream.h>
#include <menuIO/serialOut.h>
#include <menuIO/adafruitGfxOut.h>
#include <menuIO/serialIn.h>


extern Menu::navRoot nav;

void menu_begin();


//Actions
result sendThrow();
result sendClose();
result sendSave();
result sendLoad();
result sendFactory();

result readCvs();



//Fields to configure

extern unsigned int pos_thrown;
extern unsigned int pos_closed;
extern unsigned int speed;



#endif