#!/bin/bash
# Sample script to demonstrate the creation of an HTML report using shell scripting
# Web directory
WEB_DIR=/var/www/html/Nocdashboard
# A little CSS and table layout to make the report look a little nicer
echo "<HTML>
<HEAD>
<style>
.use{text-align:center;color:orange;font-size:90px;}
.titulo{font-size: .8em; color: white; background:#0863CE; padding: 0.8em 0.8em;}
table
{
 width: 100%;
border-collapse:collapse;
}
table, td,th
{
font-size:30px;
border:2px solid black;
}
</style>
<h class='use' >APP MANAGERS AVAILABILTY</h>
<meta http-equiv="refresh" content="25">
<title>APP MANAGER</title><link rel="icon" href="https://cdn4.iconfinder.com/data/icons/circle-payment/32/payment_004-payu-money-512.png" type="image/icon type"sizes="40x30">
</HEAD>
<BODY>" > $WEB_DIR/appmanager.html
# View hostname and insert it at the top of the html body
a=$( name=$(echo exit | telnet 10.50.3.20 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.50.3.20); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
b=$( name=$(echo exit | telnet 10.50.3.21 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.50.3.21); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
c=$( name=$(echo exit | telnet 10.50.3.22 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.50.3.22); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
d=$( name=$(echo exit | telnet 10.50.3.25 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.50.3.25); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
e=$( name=$(echo exit | telnet 10.50.3.105 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.50.3.105); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
f=$( name=$(echo exit | telnet 10.100.65.97 9090 2>/dev/null | grep "Connected") ; if [ "$name" == "" ] ; then  echo "SERVICE IS DOWN" ; else echo "SERVICE IS UP" ; fi; name=$(ping -c2 -i3 10.100.65.97); if [ $? -eq 0 ] ; then echo "/SERVER IS UP" ; else echo "/PING IS DOWN" ; fi)
echo "
<br>Last updated: <strong>$(date)</strong><br><br>
<table border='1'>
<tr><th class='titulo'>10.50.3.20</td>
<th class='titulo'>10.50.3.21</td>
<th class='titulo'>10.50.3.22</td>
<th class='titulo'>10.50.3.25</td>
<th class='titulo'>10.50.3.105</td>
<th class='titulo'>10.100.65.97</td>
</tr> </h>" >> $WEB_DIR/appmanager.html
echo "<tr><td align='center'>" >> $WEB_DIR/appmanager.html
echo $a >> $WEB_DIR/appmanager.html
echo "</td><td align='center'>" >> $WEB_DIR/appmanager.html
echo $b >> $WEB_DIR/appmanager.html
echo "</td><td align='center'>" >> $WEB_DIR/appmanager.html
echo $c  >> $WEB_DIR/appmanager.html
echo "</td><td align='center'>" >> $WEB_DIR/appmanager.html
echo $d  >> $WEB_DIR/appmanager.html
echo "</td><td align='center'>" >> $WEB_DIR/appmanager.html
echo $e >> $WEB_DIR/appmanager.html
echo "</td><td align='center'>" >> $WEB_DIR/appmanager.html
echo $f >> $WEB_DIR/appmanager.html
echo "</td></tr>" >> $WEB_DIR/appmanager.html
echo "</table></BODY></HTML>" >> $WEB_DIR/appmanager.html

