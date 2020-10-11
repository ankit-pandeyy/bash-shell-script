#!/bin/bash
ip=$(/sbin/ifconfig | awk '/inet 10/ {print $2}')
c=$(top -bn1 | grep Cpu | awk '{print expr 100 - $8 }')
t=1

if [ "$c" > "$t" ] ; then
    nail -s 'CPU LOAD IS HISH ON '$ip'' himanshu.pandey@payu.in << EOF
CPU UTILISATION IS HIGH . Current status is: $c % on the server $ip HOSTNAME= $(hostname) at $(date)
EOF
fi

