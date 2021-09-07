#!/bin/bash
rm -rf doc

KIBOT_DIR=$(git rev-parse --show-toplevel)
KIBOT_DIR=$KIBOT_DIR/kibot

kibot  -e DccDecoder.sch -b DccDecoder.kicad_pcb -d doc -c DccDecoder.kibot.yaml
kibot  -e DccDecoder.sch -b DccDecoder.kicad_pcb -d doc -c $KIBOT_DIR/05_fab_pcba.kibot.yaml