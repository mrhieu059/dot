#!/bin/bash

if [ -e /usr/bin/light ]
then
	light=$(light -G | cut -d '.' -f1)
	echo "$light "
else
	echo "NO "
fi
