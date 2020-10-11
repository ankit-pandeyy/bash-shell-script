#!/bin/bash
CURRENT=$(df -h | grep /dev/mapper/myvol-usr | awk '{ print $5}' | sed 's/%//g')
df -h /usr /var | awk '{ print $2,$3,$4,$5,$6 }' > /home/himanshu/disk.txt
file= cat /home/himanshu/disk.txt
THRESHOLD=80
d=$(date)
h=$(hostname)
if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
nail -s "Disk Utilisation is high at $d on Server $h(10.50.12.165)"  himanshu.pandey@payu.in < /home/himanshu/disk.txt
fi
