#!/bin/sh
if pgrep -x transmission-da >/dev/null
then
	trl='transmission-remote -l'
	dlActive=$($trl | egrep "Downloading|Up & Down" | wc -l)
	dlData=$($trl | awk 'END{print $NF}')
	ulData=$($trl | awk '/Seeding/' | wc -l)
	ulActive=$($trl | awk '/Sum:/ { printf $4 }')
	Idle=$($trl | egrep "Idle|Stopped" | wc -l)
	echo "[ ⏾:$Idle  $dlActive|$dlData  $ulData|$ulActive ]"
else
	echo "NOTOR"
fi

