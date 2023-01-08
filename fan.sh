#!/bin/bash

FAN="`sensors | grep fan1 | awk '{print $2, $3}'`"
NOT_RUNNING="0 RPM"

echo ": ${FAN}"

if [[ $FAN == $NOT_RUNNING ]]; then
   exit 0
else
   exit 1
fi
