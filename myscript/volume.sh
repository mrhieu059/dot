#!/bin/sh
mute_Status=$(pulsemixer --get-mute | sed 's/0/ /')
volume_Status=$(pulsemixer --get-volume | awk '{print $1}' )
echo "[ $mute_Status : $volume_Status ]"

