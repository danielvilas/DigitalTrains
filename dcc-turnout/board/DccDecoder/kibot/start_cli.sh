#!/bin/sh
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export WORKDIR=..
export SUBDIR=.

#    --volume="/home/$USER/.config/kicad:/home/$USER/.config/kicad:rw" \
#    --volume="/home/$USER/.cache/kicad:/home/$USER/.cache/kicad:rw" \

docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    -v $(pwd)/$WORKDIR:/home/$USER/workdir \
    --user $USER_ID:$GROUP_ID \
    --env NO_AT_BRIDGE=1 \
    --workdir="/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --rm \
    setsoft/kicad_auto:10.4-5.1.6 /bin/bash -c "cd workdir/$SUBDIR; bash"