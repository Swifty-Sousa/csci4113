#!/bin/bash
#Author: Christian F. Sousa


root_util= df / | awk 'NR==2 {printf "%d", $5}'
boot_util= df /boot | awk 'NR==2 {print "%d", $5}'

if ( $root_util>=00)
then
	mail -s "STORAGE ALERT" root@localhost <<< "root is above 80% utilization"
fi

if ($boot_util>=00)
then
	mail -s "STOREAGE ALERT" roota@localhost <<< "/boot is above 80% utilization"
fi


