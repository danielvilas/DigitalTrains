#!/bin/sh

LIBS=kicad-default,../../../../pcbdraw/
STYLE=set-black-hasl

pcbdraw -l $LIBS -s $STYLE $@ ../PowerDistribution.kicad_pcb front.png
pcbdraw -l $LIBS -s $STYLE $@ -b --silent ../PowerDistribution.kicad_pcb back.png

