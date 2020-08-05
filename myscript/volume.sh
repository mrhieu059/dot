#!/bin/sh
checkSymlink=$(readlink /etc/asound.conf | cut -d "." -f2)
if [ ${checkSymlink} == "s3" ]
then
	soundCard="1"
	mixer="PCM"	
else
	soundCard="0"
	mixer="Master"
fi

case $1 in
	'+') amixer sset -c0 Master,0 5%+ ;;
	'-') amixer sset -c0 Master,0 5%- ;;
	'mute') amixer sset -c$card $mixer,0 toggle ;;
esac
