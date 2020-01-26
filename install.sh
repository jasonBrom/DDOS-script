#!/bin/sh

echo "开始安装....."
yum install pip -y
pip3 install -r requirements.txt
yum install git -y
yum install python3 -y
yum install htop -y
yum -y update
yum install gcc libcap libpcap libpcap-devel screen php dstat cmake gmp gmp-devel gengetopt byacc flex git json-c zmap iptraf nano -y
yum groupinstall "Development Tools" -y
yum install gcc php-devel php-pear libssh2 libssh2-devel -y
pecl install -f ssh2





touch /etc/php.d/ssh2.ini
echo extension=ssh2.so > /etc/php.d/ssh2.ini
Service httpd restart
chkconfig httpd on
pip3 install -r requirements.txt
wget https://raw.githubusercontent.com/0x01h/pyddoz/master/requirements.txt
wget https://raw.githubusercontent.com/0x01h/pyddoz/master/pyddoz.py
wget https://raw.githubusercontent.com/0x01h/pyddoz/master/proxify.py
wget https://raw.githubusercontent.com/0x01h/pyddoz/master/.travis.yml
wget https://raw.githubusercontent.com/0x01h/pyddoz/master/.gitignore
wget https://raw.githubusercontent.com/jasonBrom/DDOS-script/master/api.php
mv api.php /var/www/html
cd /var/www/html
echo "安装完成请修改 api.php"
