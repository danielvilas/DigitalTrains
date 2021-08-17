#!/bin/sh

BOARD=Detector_SMD_AD
kibot  -e $BOARD.sch -b $BOARD.kicad_pcb -d kibot_out -c $BOARD.kibot.yaml