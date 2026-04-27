#!/bin/bash
while read ip
do
    echo "Dropping packets from $ip"
    iptables -I INPUT -s $ip -j DROP
    sleep 0.5
done < ./ips.txt
# done< <(cat ips.txt) - using process substitution