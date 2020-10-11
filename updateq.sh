#!/bin/bash
c=$(cat /home/himanshu/db)
a=$(mysql -u root -p$c  -e 'use server;select count(*) from serverlist;')
b=10
if [ "$a" > "$b" ] ; then
    nail -s 'NEW DATA INSERTED INTO THE DB'  'himanshu.pandey@payu.in' << EOF
PLEASE CHECK RECORD NO. "$a" on http://10.50.12.165/searchip.php to add in monitoring at $(date)
EOF
fi

