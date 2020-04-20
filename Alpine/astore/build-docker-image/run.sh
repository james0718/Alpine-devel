#!/bin/sh

i=1
while [ $i -le 5 ]
do
	echo $i
	result=`netstat -anp |grep :80|grep httpd|wc -l`
	i=`expr $i + 1`
	if [ $result -gt 0 ]
	then
		echo "apache running">>/root/adv/apache.log
		break
	else
		/usr/sbin/httpd -f /etc/apache2/httpd.conf
		echo "apache run again">>/root/adv/apache.log
		sleep 2s
		continue
	fi
done

cd /root/adv/
java -jar /root/adv/astore.jar
