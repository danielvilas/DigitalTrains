#!/bin/sh

rm -rf doc
BOARD=Detector_SMD_AD
kibot -e $BOARD.sch -b $BOARD.kicad_pcb -d doc -c $BOARD.kibot.yaml $@

rm -f doc/*.ogv