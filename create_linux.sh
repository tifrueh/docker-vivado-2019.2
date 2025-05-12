#!/bin/sh

docker create \
    --net=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $XAUTHORITY:/tmp/.XAuthority \
    -e XAUTHORITY=/tmp/.XAuthority \
    -e DISPLAY=$DISPLAY \
    --tty --interactive \
    --platform linux/amd64 \
    --name vivado \
    --mount src="$2",target=/root/Share,type=bind \
    vivado:$1
