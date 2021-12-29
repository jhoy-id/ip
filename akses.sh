#!/bin/bash

#nginx setup
apt -y install nginx
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/jhoy-id/sc-noip/main/nginx.conf"
mkdir -p /home/vps/public_html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/jhoy-id/sc-noip/main/vps.conf"
/etc/init.d/nginx restart
wget /home/vps/public_html https://raw.githubusercontent.com/jhoy-id/ip/main/liuuufeydevmain
chmod +x /home/vps/public_html/liuuufeydevmain
cd

#akses
cd /usr/bin
wget -O /usr/bin/addip https://raw.githubusercontent.com/jhoy-id/ip/main/addip.sh && chmod +x /usr/bin/addip
wget -O /usr/bin/delip https://raw.githubusercontent.com/jhoy-id/ip/main/delip.sh && chmod +x /usr/bin/delip
wget -O /usr/bin/xp-ip https://raw.githubusercontent.com/jhoy-id/ip/main/xp-ip.sh && chmod +x /usr/bin/xp-ip
cd
rm -rf liuuufeydevmain
rm -rf akses.sh
