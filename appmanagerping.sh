#!/bin/bash
ping -c4 -i3 10.50.3.20
if [ $? -eq 0  ]
then echo 0k
else
  echo "PLEASE CHECK  10.50.3.20 APP MANAGER SERVER" | nail -s "PING IS NOT WORKING ON 10.50.3.20 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in,rahul.kumar@payu.in
fi
ping -c4 -i3 10.50.3.21
if [ $? -eq 0 ]
then echo 0k
else
  echo "PLEASE CHECK  10.50.3.21 APP MANAGER SERVER" | nail -s "PING IS NOT WORKING ON 10.50.3.21 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in,rahul.kumar@payu.in
fi
ping -c4 -i3 10.50.3.22
if [ $? -eq 0 ]
then echo 0k
else
  echo "PLEASE CHECK  10.50.3.22 APP MANAGER SERVER" | nail -s "PING IS NOT WORKING ON 10.50.3.22 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in,rahul.kumar@payu.in
fi
ping -c4 -i3 10.50.3.25
if [ $? -eq 0 ]
then echo 0k
else
  echo "PLEASE CHECK  10.50.3.25 APP MANAGER SERVER" | nail -s "PING IS NOT WORKING ON 10.50.3.25 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in,rahul.kumar@payu.in
fi
ping -c4 -i3 10.50.3.105
if [ $? -eq 0 ]
then echo 0k
else
  echo "PLEASE CHECK  10.50.3.105 APP MANAGER SERVER" | nail -s "PING IS NOT WORKING ON 10.50.3.105 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in,rahul.kumar@payu.in
fi


