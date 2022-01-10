LOCAL_BASE=$(git rev-parse --show-toplevel)
SUBDIR=$(git rev-parse --show-prefix)
KIBOT_DIR=$LOCAL_BASE/kibot
PASS_FILE=/etc/passwd
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

if [ ! -d $KIBOT_DIR/docker.tmp/config ]
then
    mkdir -p $KIBOT_DIR/docker.tmp/config
fi
if [ ! -d $KIBOT_DIR/docker.tmp/cache ]
then
    mkdir -p $KIBOT_DIR/docker.tmp/cache
fi
if [ ! -d $KIBOT_DIR/docker.tmp/local ]
then
    mkdir -p $KIBOT_DIR/docker.tmp/local
fi

docker run --rm -it  \
    -v $LOCAL_BASE:/home/$USER/workdir \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --user $USER_ID:$GROUP_ID \
    --env NO_AT_BRIDGE=1 \
    --env USER=$USER \
    --workdir="/home/$USER/" \
    --volume="$PASS_FILE:/etc/passwd:ro" \
    --volume="$KIBOT_DIR/docker.tmp/config:/home/$USER/.config/kicad:rw" \
    --volume="$KIBOT_DIR/docker.tmp/cache:/home/$USER/.cache/kicad_v6.0:rw" \
    --volume="$KIBOT_DIR/docker.tmp/local:/home/$USER/.local/share/kicad:rw" \
    --rm \
    --hostname kibot \
    setsoft/kicad_auto:nightly /bin/bash -c "ls -la /home/$USER; cd workdir/$SUBDIR; bash ./runKibot.sh"