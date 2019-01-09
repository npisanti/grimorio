#!/bin/bash

ETA=$( acpi -b | awk '{print $5}' | sed 's/,//g' )
NOT=$( acpi -b | awk '{print $3}' | sed 's/,//g' )
STATUS=$( acpi -b | awk '{print $3 " " $4}' | sed 's/,//g' )
if [ "$ETA" == "discharging" ] || [ "$NOT" == "Not" ];
then
  STATUS="AC / Full"
fi
echo "$STATUS"

exit
