#!/usr/bin/env bash

/usr/bin/ffmpeg -y -i $1 -r 20 -s 352x288 -b:v 400k -acodec aac -strict experimental -ac 1 -ar 8000 -ab 24k $2

exit 0
