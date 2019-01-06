#!/bin/bash

ETA=$( acpi -b | awk '{print $5}' | sed 's/,//g' )
STATUS=$( acpi -b | awk '{print $3 " " $4}' | sed 's/,//g' )

if [ "$ETA" == "discharging" ] || [ "$ETA" == "100%" ];
then
  STATUS="AC / Full"
fi
echo "$STATUS"

exit
