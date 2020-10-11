#!/bin/bash
#This script will test that how many request your apache server can handle
#loadtest command:ab -n 10000 -c 500 http://10.50.22.87/
ab -n 100000 -c 100 http://10.50.12.165/ & 
iostat > /home/himanshu/cpu.txt
file= cat /home/himanshu/cpu.txt
d=$(date)
h=$(hostname)
ip=$(ifconfig | awk '/inet 10/ {print $2}')

nail -s "LoadTest of port 80 at $d on Server $h($ip)"  himanshu.pandey@payu.in < /home/himanshu/cpu.txt


