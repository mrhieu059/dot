#!/bin/sh


#checkRedshift(){
#	if pgrep -x redshift >/dev/null
#	then
#		echo " [ ON]"
#	else
#		echo " [ OFF]"
#	fi
#}


#musicMPD(){
#	if pgrep -x mpd >> /dev/null
#	then
#		music_Status=$(mpc -f '[%title%]|[%file%]' | grep -oe '\[p.*[a-z]\]' -e '#[0-9].\?/.\?[0-9]' |sed 's/\[playing\]//' |xargs)
#		if [ -z "$music_Status" ]
#		then
#			echo "[ ﱙ ]"
#		else
#			echo "[ $music_Status ]"
#		fi
#	else
#		echo "[X]MPD"
#	fi
##	name=$(mpc -f "[%title%]|[%file%]" | head -1)
#}

#checkInternet(){
#	internet_Status=$(connmanctl state | sed 's/State\ =/直 :/; s/online/UP/;1q' |xargs )
#	echo "[ $internet_Status ]"
#}

#checkLight(){
#	light_Status=$(xbacklight | cut -d '.' -f1)
#	echo "[  : $light_Status ]"
#}

#checkVolume(){
#	mute_Status=$(pulsemixer --get-mute | sed 's/0/ /')
#	volume_Status=$(pulsemixer --get-volume | awk '{print $1}' )
#	echo "[ $mute_Status : $volume_Status ]"
#}

#checkBat(){
#	if [ -d '/sys/class/power_supply/BAT0' ];then
#
#		status="$(cat /sys/class/power_supply/BAT?/status)"
#		battery="$(cat /sys/class/power_supply/BAT?/capacity)"
#
#		if [ $status = "Discharging" -a  $battery -lt 6 ];then
#			echo '[ Critical] '
#			doas loginctl suspend
#		elif [ $status = "Discharging" -a  $battery -le 10 ];then
#			echo '[ Critical] '
#		elif [ $status = "Discharging" -a  $battery -le 20 ];then
#			echo "[ $battery  adsf] " 
#		else 
#			echo "[ $battery $status ]" | sed 's/Discharging/ /; s/Charging/ /; s/Full/ /; s/Unknown//'
#		fi
#	else
#		echo "[ AC ONLY ]" 
#	fi
#
#}

echo  "$(torupdo.sh) $(redshift_status.sh) $(ssid.sh) $(light.sh) $(volume.sh) $(battery.sh)"
