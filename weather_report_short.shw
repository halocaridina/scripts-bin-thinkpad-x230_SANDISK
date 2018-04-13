#!/bin/bash

ZIP_CODE=`/usr/bin/curl -s ipinfo.io | /usr/bin/awk -F "\"" '/postal/{print $4}'`

LOCWEATHER=`wunderground.py -l ${ZIP_CODE} | grep -E '(Location|Condition|Temperature)' | sed 's/Location : //;s/Condition : /: /;s/Temperature :/ -- /;s/ C)/°C)/;s/ F /°F /' | xargs`

if ! [ "`ping -c 1 google.com`" ]; then
echo ": N/A"
else
echo ": ${LOCWEATHER}"
fi
exit
