#!/bin/sh

device=10
state=$(xinput list-props $device | grep "Device Enabled" | grep -o "[01]$")

if [ "$state" != "0" ] 
then
	xinput disable $device
#	notify-send -t 1000 "Disabling touchpad"
else
	xinput enable $device
#	notify-send -t 1000 "Enabling touchpad"
fi
