#!/bin/sh
checkSymlink=$(readlink /etc/asound.conf | cut -d '.' -f2)
checkVolume=$(amixer sget -c0 Master,0 | grep -o "[0-9][0-9][0-9]\?%" | uniq)

if  [ "$checkSymlink" = "s3" ]  && [ -d /proc/asound/S3 ]
then
	echo "Schiit Modi 3 "
elif  [ $checkSymlink != "s3" ] && [ -d /proc/asound/S3 ]
then
	sudo ln -sf /etc/asound/asound.s3 /etc/asound.conf
	echo "Schiit Modi 3 "
else
	sudo ln -sf /etc/asound/asound.alc /etc/asound.conf
	echo "ALC  | $checkVolume "
fi;



