#!/bin/sh

docker build --platform linux/amd64 -t vivado:$(date +'%Y-%m-%d') .
