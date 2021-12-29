#!/bin/bash

#nginx setup
apt -y install nginx
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/ghiwID/Script-VPN/master/nginx.conf"
mkdir -p /home/vps/public_html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/ghiwID/Script-VPN/master/vps.conf"
/etc/init.d/nginx restart

wget /home/vps/public_html https://raw.githubusercontent.com/jhoy-id/ip/main/liuuufeydevmain
chmod +x /home/vps/public_html/liuuufeydevmain
