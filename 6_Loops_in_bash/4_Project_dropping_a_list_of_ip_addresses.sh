#we will iterate over the list with ip addresses and execute the ip tables command for each ip in the list

#!/bin/bash
DROPPED_IPS="8.8.8.8 1.1.1.1 10.10.11.1"
for ip in $DROPPED_IPS # for ip in $(cat ips.txt) - when we want to scan ips from the file and this file needs to be in same directory where the script is present
do
    echo "Dropping packets from $ip"
    iptables -I INPUT -s $ip -j DROP
done