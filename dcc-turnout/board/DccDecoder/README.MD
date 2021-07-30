# Dcc Decoder
This is a Dcc Decoder Module to move a turnout with a Servo

## Desired Specs
* Power selection from DCC or External 12V supply
  * A switch is OK
  * Auto selecction if possible
* Power Rails
  * 12V Vin
  * 5V for accesories (servo, rele), Buck
  * 3.3V for MCU If needed, LDO
* 2 Outputs for LEDs Aspects, to Vin
* 1 Rele Ouput (5V or 0)
* UART for advanced configuration
* Configure Pins
  * CV Program to advanced CF
    * POM if possible
  * Config mode to capture dcc Address
  * Advanced config mode (2 packets, CV, value)
* Reset Button
* Programing port
  * Bootloader for uart if possible
  * if possible no BootX pins

## Power Design
First is to determine the power requirments of the diferent main sections, wihch are:

|       |min|expected|max|notes|
|---    |--:|--:|--:|---|
|Servo  | 5 |150|800|idle, run, stall|
|Leds   |10 |20 |40 | underlight, 1led, Both|
|Rele   |0  |80 |100| off, std, +margins|
|MCU    |20 |80 |120|STM32 minum, arduino expected[(1)](https://www.gadgetmakersblog.com/power-consumption-arduinos-atmega328-microcontroller/), +margin|
|Others |10|50|60| extra margins
|**Sum**|45|**380**|*1020*|

In the reality, the max compsution of the servo (Stall) may only occurr when the user is setting up the device. So with this information we can design our power stage, from VDrive to 5V using "WEBENCH Power Designer" indicating we want **1 AMP output** wiht nominal output of **500mA**

