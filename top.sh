#!/bin/bash
c=$(top -bn1 | grep id | awk '{print expr 100 - $8 }')
t=1

if [ "$c" > "$t" ] ; then
    nail -s 'CPU LOAD IS HISH ON 10.50.12.165' himanshu.pandey@payu.in << EOF
CPU UTILISATION IS HIGH . Current status is: $c % on the server 10.50.12.165 HOSTNAME= $(hostname) at $(date)
EOF
fi

