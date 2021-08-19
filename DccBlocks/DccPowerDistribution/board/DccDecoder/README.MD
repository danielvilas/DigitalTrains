# Dcc Power Distribution
This is a board to get power from a 12V DC or DCC bus, outputs the input as DC (12V or 14V from DCC), 5V and 3.3V. Includes an DCC interface to interactuate with the layout if needed.

Intended to use inside a module for its own power ussage. 

## Desired Specs Status
* [x] Power selection from DCC or External 12V supply
  * [ ] A switch is OK
  * [x] Auto selecction if possible
* [x] Power Rails
  * [x] 12V Vin
  * [x] 5V for accesories (servo, rele), Buck
  * [x] 3.3V for MCU If needed, LDO


## Power Design
From the dcc turnout we want **1 AMP output** wiht nominal output of **500mA**, enought for a Servo in stall and some accesories.

## ChangeLog
### v1.0.0-RC1
* [x] Initial Version from Dcc Turnout Decoder
* [ ] Change project name with kicad project rename