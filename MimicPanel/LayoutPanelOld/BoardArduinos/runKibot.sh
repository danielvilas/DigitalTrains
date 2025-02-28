#!/bin/bash
KIBOT_DIR=$(git rev-parse --show-toplevel)
KIBOT_DIR=$KIBOT_DIR/kibot

CURRENT=`pwd`
BOARD=`basename "$CURRENT"`


rm -rf doc
CURRENT=`pwd`
BOARD=`basename "$CURRENT"`

FILES="00_erc_drc.kibot.yaml 01_pdf_doc.kibot.yaml 02_build_doc.kibot.yaml 03_graphic_doc.kibot.yaml 04_fab_board.kibot.yaml"  

for i in $FILES 
do
    echo "Running $i"
    kibot -e $BOARD.sch -b $BOARD.kicad_pcb -d doc -c $KIBOT_DIR/$i $@
done 


rm -f doc/*.ogv






 

