#!/bin/bash

if [ -e /usr/local/bin/light ]
then
	light=$(light -G | cut -d '.' -f1)
	echo "$light "
else
	echo "NO "
fi
