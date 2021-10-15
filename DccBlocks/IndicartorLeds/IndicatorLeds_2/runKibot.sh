#!/bin/bash
KIBOT_DIR=$(git rev-parse --show-toplevel)
KIBOT_DIR=$KIBOT_DIR/kibot

CURRENT=`pwd`
BOARD="IndicatorLeds"


rm -rf doc


FILES="00_erc_drc.kibot.yaml 01_pdf_doc.kibot.yaml 02_build_doc.kibot.yaml 03_graphic_doc.kibot.yaml 04_fab_board.kibot.yaml"  

for i in $FILES 
do
    echo "Running $i"
    kibot -e $BOARD.sch -b $BOARD.kicad_pcb -d doc -c $KIBOT_DIR/$i $@
done 


rm -f doc/*.ogv




#PCB_AREA="96 82 132 96"
PANEL_GRID="3 6"

PCB_SRC=${BOARD}.kicad_pcb
PCB_DST=panel/${BOARD}.kicad_pcb

PCB_SVG_SRC=${BOARD}.svg
PCB_SVG_DST=panel/${BOARD}.svg

rm -rf panel/*

#kikit panelize extractboard --sourcearea $PCB_AREA $PCB_SRC $PCB_DST

kikit panelize grid --gridsize $PANEL_GRID\
    --vcuts  \
    --railsLr 5\
    $PCB_SRC $PCB_DST

pcbdraw $PCB_DST $PCB_SVG_DST --silent
kikit fab jlcpcb $PCB_DST panel/jlcpcb
exit 0




 

