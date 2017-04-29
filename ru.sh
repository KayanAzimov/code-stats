#!/usr/bin/env bash

echo  "cpu usage total: $(echo "scale = 2; $(ps -A -o %cpu | awk '{s+=$1} END {print s ""}') / ("$(sysctl -n hw.ncpu)" * 100) * 100 "| bc ) %"

echo "cpu usage: $(top -l 1  | grep 'CPU usage')"

free -m

df -hH  |sed -n 2p |  awk '{print "Filesystem: "$1" szie: "$2", used: "$3 ", Avail: "$4", Capacity: " $5 }'


