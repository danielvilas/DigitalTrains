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

EXTRA_VOL=""
if [ -d $HOME/.local/share/kicad/7.0/3rdparty ];
then
    EXTRA_VOL="-v $HOME/.local/share/kicad/7.0/3rdparty:/home/$USER/.local/share/kicad/7.0/3rdparty"
fi

#VERSION=latest
VERSION=ghcr.io/inti-cmnb/kicad7_auto_full:latest

docker run --rm -it  \
    -v $LOCAL_BASE:/home/$USER/workdir \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY  $EXTRA_VOL\
    --user $USER_ID:$GROUP_ID \
    --env NO_AT_BRIDGE=1 \
    --env USER=$USER \
    --env HOME=/home/$USER/ \
    --env-file $KIBOT_DIR/docker.env\
    --env KICAD_CONFIG_HOME=/home/$USER/.config/kicad \
    --workdir="/home/$USER/" \
    --volume="$PASS_FILE:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="$KIBOT_DIR/docker.tmp/config:/home/$USER/.config:rw" \
    --volume="$KIBOT_DIR/docker.tmp/cache:/home/$USER/.cache:rw" \
    --volume="$KIBOT_DIR/docker.tmp/local:/home/$USER/.local:rw" \
    --rm \
    --hostname pcbdraw \
    $VERSION /bin/bash -c "cd workdir/$SUBDIR; pip3 install git+https://github.com/yaqwsx/PcbDraw/@v0.9.0 --break-system-packages; bash"
