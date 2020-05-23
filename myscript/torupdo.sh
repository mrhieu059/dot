trl='transmission-remote -l'
tor()
{
	active=$($trl | egrep "Downloading|Up & Down" | wc -l)
	data=$($trl | awk 'END{print $NF}')
	echo " $active  $data"
}

echo $(tor)
