# Dcc Turnout Controller
This board is a controller for moving a turnout using a servo.

## Status
Alive, current project

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

## Subprojects
* __[Devel Board](board/DccDev)__: Starting board, arduino factor. Finished.
* __[Board](board/DccDecoder)__: Final board, under development
* __[ServoPmosModule](modules/ServoPmosModule)__: Small board to enable/disable power to a servo.
