#!/bin/bash
if pgrep -x redshift >/dev/null
then
	echo "ON "
else
	echo "OFF "
fi
