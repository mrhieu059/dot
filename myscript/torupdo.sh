#!/bin/sh
if pgrep -x transmission-da >/dev/null
then
	trl='transmission-remote -l'
	dlActive=$($trl | egrep "Downloading|Up & Down|Idle" | wc -l)
	dlData=$($trl | awk 'END{print $NF}')
	ulData=$($trl | awk '/Seeding/' | wc -l)
	ulActive=$($trl | awk '/Sum:/ { printf $4 }')
	echo "[  $dlActive|$dlData  $ulData|$ulActive ]"
else
	echo "NOTOR"
fi

