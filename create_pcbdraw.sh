#!/bin/sh
CWD=$(pwd)
cd $HOME/.local/lib/python3.9/site-packages/pcbdraw/footprints/KiCAD-base/Resistor_SMD/
ln -s R_1206.svg R_1206_3216Metric.svg
cd ../Capacitor_SMD
ln -s C_1206.svg C_1206_3216Metric.svg
cd ../LED_SMD
ln -s ../LEDs/LED_1206.svg LED_1206_3216Metric.svg
cd ../Package_SO
ln -s SOIC-8_5.23x5.23mm_P1.27mm.svg SOIC-8_3.9x4.9mm_P1.27mm.svg
cd ..
ln -s TO_SOT_Packages_SMD Package_TO_SOT_SMD
cd $CWD
