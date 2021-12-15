#ifndef PANEL_CTRL_h
#define PANEL_CTRL_h
#include <Arduino.h>
#include <WS2812FX.h>
#include <Wire.h>

// A basic everyday NeoPixel strip test program.

// NEOPIXEL BEST PRACTICES for most reliable operation:
// - Add 1000 uF CAPACITOR between NeoPixel strip's + and - connections.
// - MINIMIZE WIRING LENGTH between microcontroller board and first pixel.
// - NeoPixel strip's DATA-IN should pass through a 300-500 OHM RESISTOR.
// - AVOID connecting NeoPixels on a LIVE CIRCUIT. If you must, ALWAYS
//   connect GROUND (-) first, then +, then data.
// - When using a 3.3V microcontroller with a 5V-powered NeoPixel strip,
//   a LOGIC-LEVEL CONVERTER on the data line is STRONGLY RECOMMENDED.
// (Skipping these may work OK on your workbench but can fail in the field)

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif
#include "events.h"

#define LED_COUNT 41
#define LED_PIN PA_2
#define N_SERVOS 8
#define MAX_QUEUE_SIZE 100


enum pointStatus
{
    UNCHANGED = 0, //b00
    CLOSED = 2,    //10
    TRHOWN = 3     //11
};


#include "i2c_manager.h"
#include "leds.h"




#endif