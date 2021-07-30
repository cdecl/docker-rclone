#!/bin/bash

SRC=~/temp/rclone-app
DEST=infradb:temp/rclone-app

# docker pull cdecl/rclone
docker run --rm -v ~/.config/rclone:/root/.config/rclone -v $SRC:/data \
	cdecl/rclone /root/sync.sh $DEST
