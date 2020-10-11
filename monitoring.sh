#!/bin/bash
monitor > /home/himanshu/monitor.txt
file= cat /home/himanshu/monitor.txt
nail -s "Disk Utilisation is high at $d on Server $h(10.50.12.165)"  himanshu.pandey@payu.in < /home/himanshu/monitor.txt
fi
