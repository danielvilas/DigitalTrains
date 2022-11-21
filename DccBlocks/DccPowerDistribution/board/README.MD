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

Degub led consumption with provided Resistences:

|Led|Color used| VLed| Current | V Mesured| VR | R|
|---|---|---|---|---|---|---|
|D4 Vdrive|White|2.92V| 12.9 mA|14.54V|11.62V|900|
|D5 5V|Blue|2.89V| 10.4 mA|2.08V|4.97V|200|
|D6 3.3V|Light Blue|2.75V| 5.6 mA|0.56V|11.62V|100|

## ChangeLog
### v1.0.0-RC1
* [x] Initial Version from Dcc Turnout Decoder
* [x] Change project name with kicad project rename

### V1.0.0-RC2
* [ ] Add Test Points
  * [] Voltage Main (GND, Vdrive,+5V, +3.3V)
  * [] Voltage Others (VDcc,Gnd_Dcc, VDecoder,GND_Deco)
  * [] Gate-Source Q4 (VDcc Blocker)
* [ ] See U? on the silk (usefull for doc)
* [ ]  Change Power Diodes 
* [x]  Isolate Deco GND
* [x]  Correct ECR (Net Ties - names)
* [ ]  Add auto selection Debug Leds
* [ ]  Add Pi Filter to VDrive
* [ ]  Check CC only & DCC at the same time
* [ ]  Check Position of JP3 And JP4