#!/bin/sh

docker create \
    -e DISPLAY=host.docker.internal:0 \
    --tty --interactive \
    --platform linux/amd64 \
    --name vivado \
    --mount src="/Users/tifrueh/Documents/Vivado",target=/Vivado,type=bind \
    vivado:$1
