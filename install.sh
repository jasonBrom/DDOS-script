#!/bin/sh

echo "开始安装....."
yum install git -y
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
