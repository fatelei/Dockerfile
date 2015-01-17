#!/bin/bash

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p
sed -i '1s/^/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE/' /etc/rc.local
