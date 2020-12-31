#!/bin/sh

if [ -d '/sys/class/power_supply/BAT0' ];then

	status="$(cat /sys/class/power_supply/BAT?/status)"
	battery="$(cat /sys/class/power_supply/BAT?/capacity)"

	if [ $status = "Discharging" -a  $battery -lt 6 ];then
		echo '[ Critical] '
		doas loginctl suspend
	elif [ $status = "Discharging" -a  $battery -le 10 ];then
		echo '[ Critical] '
	elif [ $status = "Discharging" -a  $battery -le 20 ];then
		echo "[ $battery ] " 
	else 
		echo "[ $battery $status ]" | sed 's/Discharging/ /; s/Charging//; s/Full/ /; s/Unknown//'
	fi
else
	echo "[ AC ONLY ]" 
fi
