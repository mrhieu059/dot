#!/bin/bash

bat(){
	if [ -d '/sys/class/power_supply/BAT0' ];then

		status="$(cat /sys/class/power_supply/BAT?/status)"
		battery="$(cat /sys/class/power_supply/BAT?/capacity)"
	else
		AC=ON
	#	echo $AC
	fi

	if [[ $AC = "ON" ]];then
		echo "AC" 
	elif [ $status = "Discharging" -a  $battery -le 3 ];then
		echo Critical
		loginctl hibernate
	elif [ $status = "Discharging" -a  $battery -le 20 ];then
		echo "$battery  " 
	else 
		echo "$battery $status" | sed 's/Discharging/ /; s/Charging/ /; s/Full/ /; s/Unknown//'
	fi
}


echo $(bat)
