#!/bin/sh

# Check to see if docker deadmon is started?
dockerStatus=$(docker ps --format "{{.Names}}" | xargs | sed "s/nordvpn//; s/torrent//")
if pgrep -x dockerd >/dev/null
then
	echo "[$dockerStatus] "
else
	echo "OFF "
fi
