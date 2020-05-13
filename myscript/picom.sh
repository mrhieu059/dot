#!/bin/sh

if [[ $(pgrep picom) ]]
then
	pkill picom 
	dunstify -t 1000 "Turning off Picom"
else
	picom & 
	notify-send -t 1000 "Turning on Picom"
fi
