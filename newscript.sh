#!/bin/bash
username=payunoc
passwd=Unocp@yu
port=33000
cmd1="cd /home/himanshu"
cmd2="sh -x filesystem.sh >>/home/payunoc/"
cmd3=""
while read ip command
do
    # -c 1 means ping only once
    # -w means time-out, so if nothing is received within 5 seconds then it's a fail
    if ! ping -c 1 -w 5 10.50.22.87 &>/dev/null ;
    then
        echo "Failed to connect to 10.50.22.87" >&2
    else
        echo "Connected to 10.50.22.87!"
        ( echo open ${ip} ${port}
            sleep 2
            echo ${username}
            sleep 2
            echo ${passwd}
            sleep 2
            echo ${cmd1}
            sleep 3
            echo ${cmd2}
            sleep 3
            echo ${cmd3}
            sleep 3
            echo exit ) | telnet
    fi
done
