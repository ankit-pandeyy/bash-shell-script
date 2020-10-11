#!/bin/sh
MESSAGE="/home/himanshu/disk-usage.out"
MESSAGE2="/home/himanshu/disk-usage-1.csv"
echo "Server Name, Filesystem, Size, Used, Avail, Use%, Mounted on" > $MESSAGE2
for server in thvtstrhl7 thvrhel6
for server in more /home/himanshu/servers-disk-usage.txt
do
output1=`ssh $server df -Ph | tail -n +2 | sed s/%//g | awk '{ if($5 > 80) print $0;}'`
echo "$server $output1" >> $MESSAGE
done
cat $MESSAGE | grep G | column -t | while read output;
do
Sname=$(echo $output | awk '{print $1}')
Fsystem=$(echo $output | awk '{print $2}')
Size=$(echo $output | awk '{print $3}')
Used=$(echo $output | awk '{print $4}')
Avail=$(echo $output | awk '{print $5}')
Use=$(echo $output | awk '{print $6}')
Mnt=$(echo $output | awk '{print $7}')
echo "$Sname,$Fsystem,$Size,$Used,$Avail,$Use,$Mnt" >> $MESSAGE2
done
echo "Disk Usage Report for `date +"%B %Y"`" | nailx -s "Disk Usage Report on `date`" -a /home/himanshu/disk-usage-1.csv himanshu.pandey@payu.in
rm $MESSAGE
