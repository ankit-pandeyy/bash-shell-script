echo -e '\035\nquit' | telnet 10.50.22.87 33000
if [ $? -eq 1 ]
then
  echo "Telnet is not working from  10.50.12.165 to 10.50.22.87.Kindly Check the servers" | nail -s "TELNET IS NOT WORKING" himanshu.pandey@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.22.78 330
if [ $? -eq 1 ]
then
  echo "Telnet is not working from  10.50.12.165 to 10.50.22.78.Kindly Check the servers" | nail -s "TELNET IS NOT WORKING" himanshu.pandey@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.22.79 3300
if [ $? -eq 1 ]
then
  echo "Telnet is not working from  10.50.12.165 to 10.50.22.79.Kindly Check the servers" | nail -s "TELNET IS NOT WORKING" himanshu.pandey@payu.in
fi



