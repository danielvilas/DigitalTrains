#include "panel_controller.h"

// Declare our NeoPixel strip object:


// setup() function -- runs once at startup --------------------------------

#define N_EVENT_PROCESSORS 2
 void (*events_processors[])(p_Event) = {pointLog,ledMover};

void process_event(p_Event event)
{

  for(int i =0 ; i<N_EVENT_PROCESSORS;i++){
    events_processors[i](event);
  }
  /*            */
}

void setup()
{
  // These lines are specifically to support the Adafruit Trinket 5V 16 MHz.
  // Any other board, you can remove this part (but no harm leaving it):
#if defined(__AVR_ATtiny85__) && (F_CPU == 16000000)
  clock_prescale_set(clock_div_1);
#endif
  // END of Trinket-specific code.

  ledsInit();
  Wire.begin();            // join i2c bus (address optional for master)
}

// loop() function -- runs repeatedly as long as board is on ---------------

void loop()
{

  i2c_process();

  p_Event event = get_Event();
  if (event != NULL)
  {
    process_event(event);
    free(event);
  }
}
