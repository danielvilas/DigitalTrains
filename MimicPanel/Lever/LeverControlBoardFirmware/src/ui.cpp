#include <Arduino.h>
#include "config.h"
#include "ui.h"

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void ui_begin(){
    pinMode(LED, OUTPUT);
    digitalWrite(LED, HIGH); //off

    delay(2000); // Pause for 2 seconds to charge the SSD1306

    Wire.begin();

    if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C))
    {
        SERIAL_OUT.println(F("SSD1306 allocation failed"));
        for (;;)

            ; // Don't proceed, loop forever
    }
    SERIAL_OUT.println(F("SSD1306 allocated OK!!"));
    // Show initial display buffer contents on the screen --
    // the library initializes this with an Adafruit splash screen.
    display.display();
    digitalToggle(LED);//on
    delay(2000); // Pause for 2 seconds to see the logo
    digitalToggle(LED);//off
    display.clearDisplay();
    display.display();
}