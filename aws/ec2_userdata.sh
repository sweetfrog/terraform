#!/bin/bash
yum update -y
yum install httpd -y
yum install git -y
service httpd start
chkconfig httpd on
yum install wget -y
yum install php php-mysql mysql -y
git clone https://github.com/BlackrockDigital/startbootstrap-creative.git /var/www/html/
