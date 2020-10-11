echo -e '\035\nquit' | telnet 10.50.3.20 9090
if [ $? -eq 1 ]
then
  echo "APPLICATION MANAGER 10.50.3.20 IS NOT WORKING PLEASE CHECK" | nail -s "ISSUE IN 10.50.3.20 APP MANAGER"  noc@payu.in,himanshu.pandey@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.3.21 9090
if [ $? -eq 1 ]
then
  echo "APPLICATION MANAGER 10.50.3.21 IS NOT WORKING PLEASE CHECK" | nail -s "ISSUE IN 10.50.3.21 APP MANAGER"  noc@payu.in,rahul.kumar@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.3.22 9090
if [ $? -eq 1 ]
then
 echo "APPLICATION MANAGER 10.50.3.22 IS NOT WORKING PLEASE CHECK" | nail -s "ISSUE IN 10.50.3.22 APP MANAGER"  noc@payu.in,rahul.kumar@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.3.25 9090
if [ $? -eq 1 ]
then
  echo "APPLICATION MANAGER 10.50.3.25 IS NOT WORKING PLEASE CHECK" | nail -s "ISSUE IN 10.50.3.25 APP MANAGER"  noc@payu.in,rahul.kumar@payu.in
fi
echo -e '\035\nquit' | telnet 10.50.3.105 9090
if [ $? -eq 1 ]
then
  echo "APPLICATION MANAGER 10.50.3.105 IS NOT WORKING PLEASE CHECK" | nail -s "ISSUE IN 10.50.3.105 APP MANAGER"  noc@payu.in,rahul.kumar@payu.in
fi


