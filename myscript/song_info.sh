#!/usr/bin/bash
status=$(mpc status | grep playing)
current_Status=$(mpc -f '[[\[%title%\] -] %artist% ] | %file%' | head -1 | cut -d '/' -f 2- | cut -c -25 | sed 's/.mp3/ /' | tr -d '[]()')
if [[ -z $status ]]
then
	echo "[]"
else
	echo " $current_Status"
fi

	