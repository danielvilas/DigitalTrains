#include <Arduino.h>
#include "config.h"
#include "tc_menu.h"
#include "tc_ui.h"

#define MAX_DEPTH 2

const colorDef<uint16_t> colors[6] MEMMODE = {
    {{WHITE, BLACK}, {WHITE, BLACK, BLACK}}, //bgColor
    {{BLACK, WHITE}, {BLACK, WHITE, WHITE}}, //fgColor
    {{BLACK, WHITE}, {BLACK, WHITE, WHITE}}, //valColor
    {{BLACK, WHITE}, {BLACK, WHITE, WHITE}}, //unitColor
    {{BLACK, WHITE}, {WHITE, WHITE, WHITE}}, //cursorColor
    {{BLACK, WHITE}, {WHITE, BLACK, BLACK}}, //titleColor
};

#define textScale 1
#define gfxWidth 128
#define gfxHeight 64
#define fontX 6
//5
#define fontY 9

MENU(cvMenu, "Cvs", Menu::doNothing, Menu::noEvent, Menu::wrapStyle,
    FIELD(pos_thrown,"Thrown","",0,127,5,1,doNothing,noEvent,noStyle),
    FIELD(pos_closed,"Closed","",0,127,5,1,doNothing,noEvent,noStyle),
    FIELD(speed,"Speed","",1,17,4,1,doNothing,noEvent,noStyle),
    EXIT("<Back")
    );

MENU(mainMenu, "TurnOut Cfg", Menu::doNothing, Menu::noEvent, Menu::wrapStyle, 
    OP("Throw",sendThrow,Menu::enterEvent),
    OP("Close",sendClose,Menu::enterEvent),
    SUBMENU(cvMenu),
    OP("Save",sendSave,Menu::enterEvent),
    OP("Load",sendLoad,Menu::enterEvent),
    OP("Factory reset",sendFactory,Menu::enterEvent)
    );

debouncedEncoderIn<ROT_DT, ROT_CLK> encoder;                     //simple quad encoder driver
debouncedEncoderInStream<ROT_DT, ROT_CLK> encStream(encoder, 4); // simple quad encoder fake Stream
//a keyboard with only one key as the encoder button
keyMap encBtn_map[] = {{-ROT_SW, defaultNavCodes[enterCmd].ch}}; //negative pin numbers use internal pull-up, this is on when low
keyIn<1> encButton(encBtn_map);                                  //1 is the number of keys

serialIn serial(SerialUSB);
MENU_INPUTS(in, &encStream, &encButton, &serial);

//MENU_INPUTS(in, &encStream, &serial);
MENU_OUTPUTS(out, MAX_DEPTH, ADAGFX_OUT(display, colors, fontX, fontY, {0, 0, gfxWidth / fontX, gfxHeight / fontY}), NONE);

NAVROOT(nav, mainMenu, MAX_DEPTH, in, out);

void menu_begin()
{
    encButton.begin();
    encoder.begin();
    pinMode(ROT_SW, INPUT_PULLUP);
}