#!/bin/bash
trap "echo Exit signal is detected" 2

while true
do
	echo "pid is $$"
	status="$(cat /sys/class/power_supply/BAT?/status)"
	battery="$(cat /sys/class/power_supply/BAT?/capacity)"

	[ $status = "Discharging" ] && [ $battery -le 20 ] && 
	echo "$battery " || echo "$battery $status" | sed 's/Discharging//; s/Charging//; s/Full//'
	sleep 10
done
