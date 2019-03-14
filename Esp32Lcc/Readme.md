# Esp32 Lcc
Under this folder will be the project for implementing LCC (NRMA / OpenLCB) with Wifi PHY.

<aside class="warning">
This is a Work In Progress, and in an initial stage.

Please be patient while developing
</aside>

## Objectives
The objetives of this project are

* Control of turnouts and accesories in a layout
* Able to create Control Panels with feedback
* Reduce the use of cables (so wireless control)
* Be Open Source
  * Conforms with Standard Protocols
    * LCC
    * XpressNet
    * Loconet
    * ... 
  * Easy to implement other clients/devices

## Why Esp32?
For wireles comunication we can have several protocols that we can divide on Smart Phone enabled and Gateway Need
* Smart Phone Enabled
  * Wifi (TCP, UDP,..)

     Almost every Smart Phone or tablet has Wifi. 
     Consumes more power but it is easy to create infraestructure. Also is Expensier than BLE.

     We can use HTTP/HTML so there is no need for custom app on the device.

    
    * Avaible Chips: Esp32 Esp8266
  * BlueTooth/BLE

    Almost every Smart Phone or tablet has Ble, cnsumes less power and there is no need of infraestructure but is cheaper than Wifi.

    For configuring the systems we need to create a custom app for each system (iOS, Android, Windows,...) but we can use standart BLE set/get for configure using existing tools like NrfTool
    * Avaible Chips: Nrf51XXX Nrf52XXX CC25XX CC26XX
  * LoRa
     
     Considering that is possible to conect "any" LoRa device who is connected to Internet trough a standar and pre-existing gateway
     * Discarded for Slow, it is designed for Slow data rate
  * SIM Based (NB-IOT, 4G, 5G,...)
    * Needs a carrier, with cost (discarded)
* Custom Gateway Enabled 
  * ZigBee, Custom 801.15.4, ANT, LoRa, Custom RF,...
  * All of this are discarded because the need to create a custom gateway.
  * There are chips multiprotocol like CC2650 or NRF 52840

  After discovering the devices we have three platforms
  * EspressIF with ESP32/ESP8266
  * Nordic with NRF51/NRF52
  * Texas with the CC25/CC26 series

  At the date of this Document only the EspressIF can build firmwares with PlatformIo, Texas CC is not supported by platformIO (needs Keil or IAR) and Nordic is broken both in MBed and in platformio.
