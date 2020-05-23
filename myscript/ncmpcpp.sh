#!/bin/bash

if [[ -z $(pidof ncmpcpp) ]]
then
	alacritty --class "music" -t "ncmpcpp" -e ncmpcpp ; notify-send -t 1000 "Turning on NCMCPP"
else
	dunstify -t 1000 "NCMCPP Already Running"
fi
