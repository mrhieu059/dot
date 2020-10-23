#!/bin/sh
if pgrep -x musicpd
then
	ncmpcpp
else
	dunstify "Starting MPD"
	musicpd
	mpc add /
	ncmpcpp

fi;
