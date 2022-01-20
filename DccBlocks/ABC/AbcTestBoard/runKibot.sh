#!/bin/bash
KIBOT_DIR=$(git rev-parse --show-toplevel)
RES=$?
if [ $RES -eq 0 ] 
then
    KIBOT_DIR=$KIBOT_DIR/kibot
else
    KIBOT_DIR=/home/$USER/workdir/kibot
fi    
echo $KIBOT_DIR
rm -rf doc
CURRENT=`pwd`


BOARD=`basename $CURRENT`
if [ ! -f  $BOARD.kicad_sch ]
then
    BOARD=$(dirname "$CURRENT")
    BOARD=`basename $BOARD`
fi
if [ ! -f  $BOARD.kicad_sch ]
then   
    echo Expected file not found: $BOARD.sch
    #exit 0
    BOARD=PowerDistribution
fi



FILES="00_erc_drc.kibot.yaml 01_pdf_doc.kibot.yaml 02_build_doc.kibot.yaml 03_graphic_doc.kibot.yaml 04_fab_board.kibot.yaml"  
for i in $FILES 
do
    echo "Running $i"
    kibot -e $BOARD.kicad_sch -b $BOARD.kicad_pcb -d doc -c $KIBOT_DIR/$i $@
done 


#rm -f doc/*.ogv

exit 0




 

