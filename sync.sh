#!/bin/bash

DEST="$1"

/usr/bin/rclone sync /data $DEST --progress --transfers 8 --checkers 10 --fast-list --copy-links


