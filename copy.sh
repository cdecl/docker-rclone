#!/bin/bash

DEST="$1"

/usr/bin/rclone copy /data $DEST --progress --transfers 8 --checkers 10 --fast-list --copy-links


