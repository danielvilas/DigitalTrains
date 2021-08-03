#!/bin/sh

PCB_SRC=../Detector_SMD_AD.kicad_pcb 
PCB_DST=Detector_SMD_AD.kicad_pcb 
#PCB_AREA="96 82 132 96"
PANEL_GRID="3 2"

PCB_SVG_SRC=Detector_SMD_AD.svg
PCB_SVG_DST=Detector_SMD_AD_panel.svg

pcbdraw $PCB_SRC $PCB_SVG_SRC --silent

#kikit panelize extractboard --sourcearea $PCB_AREA $PCB_SRC $PCB_DST

kikit panelize grid --space 3 --gridsize $PANEL_GRID\
    --tabwidth 5 --tabheight 5 \
    --mousebites 0.5 1 0 --radius 1 \
    --railsTb 5\
    --fiducials 10 2.5 1 2 \
    --tooling 5 2.5 1.5 \
    --htabs 1 --vtabs 3 \
    --copperfill \
    $PCB_SRC $PCB_DST

pcbdraw $PCB_DST $PCB_SVG_DST --silent

kikit fab jlcpcb $PCB_DST fab

