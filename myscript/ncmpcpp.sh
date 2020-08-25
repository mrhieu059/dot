#!/bin/sh
if pgrep -x mpd
then
	ncmpcpp
else
	dunstify "Starting MPD"
	mpd
	ncmpcpp
fi;
