#!/bin/sh
BOARD=Detector_SMD_Simple

rm -rf doc
kibot  -e $BOARD.sch -b $BOARD.kicad_pcb -d doc -c $BOARD.kibot.yaml $@
rm -f doc/*.ogv