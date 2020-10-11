c=$(cat /home/himanshu/db)
mysql -u test -p$c  -e 'show slave status\G;' | grep  'Slave_IO_Running' | awk '{ print $2}'|head -1

ip=$(/sbin/ifconfig | awk '/inet 10/ {print $2}')
stats=$(f6)
if [ ${stats} = ${b} ]; then
echo "Slave_IO is running"
else
echo "kindly check" | nail -s "Slave_IO is not running on $ip  from  10.50.12.165" himanshu.pandey@payu.in
#echo "kindly check" | nail -s "Slave_IO is not running on $ip  from 10.50.12.165" mailid
fi

