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
