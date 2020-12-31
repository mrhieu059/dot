#!/bin/sh

if [ -e /usr/bin/light ]
then
	light=$(light -G | cut -d '.' -f1)
	echo "[ : $light ]"
else
	light_Status=$(xbacklight | cut -d '.' -f1)
	echo "[  : $light_Status ]"

fi
