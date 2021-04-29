# OpenLCB Network

The devel network consists in three nodes

```
[ESP32-Devel] <-> [Arduino Node] <-> [RaspberryPi]
```

## Raspberry Pi
The Raspberry Pi node is a pi ZERO Wifi, with:
* CAN HAT
* OpenMRN Hub (from can to eth)
* JRMI (use via Remote desktop)

## Arduino Node
A basic OpenLCB node in a arduino (board pending) with only a led, and button (to send/receive envents)

## ESP32-Devel
The board under this development.
