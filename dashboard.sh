#!/bin/bash
#Author: Christian F. Sousa

echo
echo
echo "CPU AND MEMORY RESCOURCES~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo 
echo CPU Load Average: `uptime | awk '{print $8, $9, $10}'` "          "    Free RAM: `free -m | awk 'NR==2 {print $4}'`
echo 
echo "NETWORK CONNECITONS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo
echo lo Bytes Received: `cat /proc/net/dev | awk 'NR==4{print $2}'` "    " lo Bytes Transmitted: `cat /proc/net/dev | awk 'NR==4{print $10}'`
echo
echo
echo enp0s3 Bytes Recived: `cat /proc/net/dev | awk 'NR==3{print $2}'` "    "  enp0s3 Bytes Transmiteed: `cat /proc/net/dev | awk 'NR==3{print $10}'`
echo
echo
if ping -q -c 1 -W 1 8.8.8.8 > /dev/null; then
	echo "internet connectivity: YES"
else
	echo "internet connectivity: NO"
fi

echo
echo "ACCOUNT INFORMATION~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo
echo Total Users: `cat /etc/passwd | wc -l` "    "  Active Users: `who | wc -l` 
echo
echo Shells:
echo
echo /bin/bash: `cat /etc/passwd | grep /bin/bash | wc -l`
echo
echo /bin/false: `cat /etc/passwd | grep /bin/false | wc -l`
echo
echo /sbin/nologin: `cat /etc/passwd | grep /sbin/nologin | wc -l`
echo
echo "FILESYSTEM INFORMATION~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo
echo Total Files: `find / -type f 2>/dev/null | wc -l`  "       " Total directories: `find / -type d 2>/dev/null | wc -l` 
echo
echo


