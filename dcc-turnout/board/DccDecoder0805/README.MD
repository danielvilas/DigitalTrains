# Dcc Decoder
This is a Dcc Decoder Module to move a turnout with a Servo

> __WARN__: this folder is a second iteration, to try to model PCB different. and check with version is more addecuate
>
> After testing some iterations only one will be on the repository.


## Desired Specs Status
* ̣[x]Remove Power Distribution to project:  [Power Distribution](../DccBlocks/DccPowerDistribution/)
* [ ] 2 Outputs for LEDs Aspects, to Vin
* [ ] 1 Rele Ouput (5V or 0)
* [x] UART for advanced configuration
* [x] Configure Pins
  * [ ] CV Program to advanced CF
    * [ ] POM if possible
  * [ ] Config mode to capture dcc Address
  * [x] Advanced config mode (2 packets, CV, value)
* [x] Reset Button
* [x] Programing port
  * [ ] Bootloader for uart if possible
  * [ ] if possible no BootX pins
* [x] I2C for EzyBus

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

## ChangeLog
### v0.1.0
* Initial Version
### v0.2.0
* [x] Buck Converter
* [x] Power Switch with mosfet
### v0.3.0
* [X] D1 FootPrint
* [x] D7 Check stock and review footprint
* [x] Output Connectors, following amps and voltage
* [x] Check 12v DC Jack size with layout
* [X] J7 (Dcc iface) horizontal
* [X] J7 Silk explanation
* [x] J1,J2 and J3, place a bit low and add Mount Hole
* [x] J1,J2 and J3, explain in silk.
* [x] JP* (all) explain in silk (back)
* [x] Dcc iface add jumper Normally Open to isolate 5v rail from buck
* [x] Copy design to new Project (Dcc Power Distributor)
## v0.4.0
* [x] Remove Power Distritubion
* [x Basic MCU
  * [x] MCU
  * [x] SWD
  * [x] Boot 0
* [x] UART.
* [x] I2C
* [x] LEDS
* [x] RELE
* [x] Servo
  * [ ] full
  * [x] enabled
* [x] Config Pins
## v0.4.1
* [x] Remove 6p SWD
* [x] Return to th SWD