#!/bin/sh

if pgrep -x syncthing >/dev/null
then
	echo "ON "
else
	echo "OFF "
fi
