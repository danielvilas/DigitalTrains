#!/bin/sh
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export WORKDIR=..
export SUBDIR=.

#    --volume="/home/$USER/.config/kicad:/home/$USER/.config/kicad:rw" \
#    --volume="/home/$USER/.cache/kicad:/home/$USER/.cache/kicad:rw" \
# -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY
# docker run --rm -it  \
#     -v $(pwd)/$WORKDIR:/home/$USER/workdir \
#     --user $USER_ID:$GROUP_ID \
#     --env NO_AT_BRIDGE=1 \
#     --workdir="/home/$USER" \
#     --volume="/etc/group:/etc/group:ro" \
#     --volume="/etc/passwd:/etc/passwd:ro" \
#     --volume="/etc/shadow:/etc/shadow:ro" \
#     --rm \
#     setsoft/kicad_auto:10.4-5.1.6 /bin/bash -c "cd workdir/$SUBDIR; bash"



unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

if [ ! $machine == "Mac" ]
then
    echo "This Script is for Mac Os"
    exit 0
fi
# Mac commands
if [ ! -d config ]
then
    mkdir -p config/kicad
    mkdir -p cache/kicad
fi
if [ ! -f passwd ]
then
    cp /etc/passwd .
    echo "$USER:x:$USER_ID:$GROUP_ID:$USER:/home/$USER:/usr/sbin/nologin" >> passwd
fi

docker run --rm -it  \
    -v $(pwd)/$WORKDIR:/home/$USER/workdir \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --user $USER_ID:$GROUP_ID \
    --env NO_AT_BRIDGE=1 \
    --workdir="/home/$USER" \
    --volume="$(pwd)/passwd:/etc/passwd:ro" \
    --volume="$(pwd)/config/kicad:/home/$USER/.config/kicad:rw" \
    --volume="$(pwd)/cache/kicad:/home/$USER/.cache/kicad:rw" \
    --rm \
    --hostname kibot \
    setsoft/kicad_auto:latest /bin/bash -c "cd workdir/$SUBDIR; bash"