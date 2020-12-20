#!/bin/sh

if pgrep -x redshift
then
	notify-send "Turning redshift off"
	pkill redshift
else
	notify-send "Turning redshift on"
	redshift -c ~/.config/redshift/redshift.conf &
fi
