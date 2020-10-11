#!/bin/bash

>/tmp/uptime.txt


IPADDR=`/sbin/ifconfig | grep "inet"| head -n 1| cut -d: -f2 | awk {'print $2'}`
DATE="`date`"

/bin/mysql -u test -p'Test@321' -e "\s" | grep Uptime | awk '{ print $2 $3 $4 $5 $6 $7}' >>/tmp/uptime.txt


a=$(cat /tmp/uptime.txt);


echo "YOUR TEST DB UPTIME" | nail -s "Uptime of $IPADDR on $DATE is $a" himanshu.pandey@payu.in

exit

