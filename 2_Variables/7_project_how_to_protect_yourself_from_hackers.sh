#!/bin//bash
read -p "Enter IP, Network or domain to drop:" ip
echo "Blocking connections from $ip"
sleep 5

iptables -I INPUT -s $ip -j DROP
echo "Done"

#Giving address as argument istead of being written by user
echo "Blocking connections from $1"
sleep 5

iptables -I INPUT -s $1 -j DROP
echo "Done"