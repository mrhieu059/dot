#!/bin/sh

if pgrep -x picom
then
	pkill picom &
	notify-send -t 1000 "Turning off Picom"
else
	picom & 
	notify-send -t 1000 "Turning on Picom"
fi
