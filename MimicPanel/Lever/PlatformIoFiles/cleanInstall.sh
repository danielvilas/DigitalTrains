#!/bin/sh
PLATFORMIO_DIR=${HOME}/.platformio
rm -rf $PLATFORMIO_DIR/packages/framework-arduinoststm32
rm -rf $PLATFORMIO_DIR/platforms/ststm32/
pio pkg install --global --platform ststm32
pio pkg install --global --tool "platformio/framework-arduinoststm32"  