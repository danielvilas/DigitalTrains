/* -*- C++ -*- */
/********************
Sept. 2014 Rui Azevedo - ruihfazevedo(@rrob@)gmail.com

quadrature encoder driver (PCINT)
quadrature encoder stream (fake, not using buffers)

*/

#ifndef RSITE_ARDUINO_MENU_ENCODER
  #define RSITE_ARDUINO_MENU_ENCODER

  #include <pcint.h> //https://github.com/neu-rah/PCINT
  #include <menuDefs.h>

  #ifndef DEBUOUNCE_MICROS
  #define DEBUOUNCE_MICROS 20
  #endif

  namespace Menu {

    template<uint8_t pinA,uint8_t pinB>
    class debouncedEncoderIn {
    public:
      volatile int pos=0;
      volatile int lastUpdated=0;

      //int pinA,pinB;
      //encoderIn<pinA,pinB>(int a,int b):pinA(a),pinB(b) {}
      void begin() {
        pinMode(pinA, INPUT_PULLUP);
        pinMode(pinB, INPUT_PULLUP);
        //attach pin change handlers
        PCattachInterrupt<pinA>(mixHandler((void(*)(void*))debouncedEncoderInUpdateA,this), CHANGE);
        PCattachInterrupt<pinB>(mixHandler((void(*)(void*))debouncedEncoderInUpdateB,this), CHANGE);
      }
      //PCint handlers
      static void debouncedEncoderInUpdateA(class debouncedEncoderIn<pinA,pinB> *e);
      static void debouncedEncoderInUpdateB(class debouncedEncoderIn<pinA,pinB> *e);
    };

    //PCint handlers
    template<uint8_t pinA,uint8_t pinB>
    void debouncedEncoderIn<pinA,pinB>::debouncedEncoderInUpdateA(class debouncedEncoderIn<pinA,pinB> *e) {
      if(micros()-e->lastUpdated <DEBUOUNCE_MICROS ) return;
      if (digitalRead(pinA)^digitalRead(pinB)) e->pos--;
      else e->pos++;
      e->lastUpdated=micros();
    }
    template<uint8_t pinA,uint8_t pinB>
    void debouncedEncoderIn<pinA,pinB>::debouncedEncoderInUpdateB(class debouncedEncoderIn<pinA,pinB> *e) {
      if(micros()-e->lastUpdated <DEBUOUNCE_MICROS) return;
      if (digitalRead(pinA)^digitalRead(pinB)) e->pos++;
      else e->pos--;
      e->lastUpdated=micros();
    }

    //emulate a stream based on encoderIn movement returning +/- for every 'sensivity' steps
    //buffer not needer because we have an accumulator
    template<uint8_t pinA,uint8_t pinB>
    class debouncedEncoderInStream:public menuIn {
    public:
      debouncedEncoderIn<pinA,pinB> &enc;//associated hardware encoderIn
      int sensivity;
      int oldPos=0;
      debouncedEncoderInStream(debouncedEncoderIn<pinA,pinB> &enc,int sensivity):enc(enc), sensivity(sensivity) {}
      inline void setSensivity(int s) {sensivity=s;}
      int available(void) {return abs(enc.pos-oldPos)/sensivity;}
      int peek(void) override {
        int d=enc.pos-oldPos;
        if (d<=-sensivity)return options->navCodes[downCmd].ch;
        if (d>=sensivity) return options->navCodes[upCmd].ch;
        return -1;
      }
      int read() override {
        int d=enc.pos-oldPos;
        if(d>0 && oldPos<0) d+=sensivity;
        else if(d<0 && oldPos>0) d-=sensivity;
        if (d<=-sensivity) {
          oldPos-=sensivity;
          return options->navCodes[downCmd].ch;
        }
        if (d>=sensivity) {
          oldPos+=sensivity;
          return options->navCodes[upCmd].ch;
        }
        return -1;
      }
      void flush() {oldPos=enc.pos;}
      size_t write(uint8_t v) {oldPos=v;return 1;}

    };

  }//namespace Menu
#endif
