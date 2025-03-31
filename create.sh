#!/bin/sh

docker create \
    -e DISPLAY=host.docker.internal:0 \
    --tty --interactive \
    --platform linux/amd64 \
    --name vivado \
    --mount src="$2",target=/root/Share,type=bind \
    vivado:$1
