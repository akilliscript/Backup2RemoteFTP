#!/bin/bash
cd /home/$1/public_html
tar --ignore-failed-read --create --gzip --file=/backup/www-$1.tar.gz * .htaccess
cd /backup
/usr/local/bin/uploadToFTP www-$1.tar.gz
rm -rf www-$1.tar.gz
echo $1 "icin yedekleme tamamlandi." >> /var/log/backup.log 
# you may want change this info text by your language..
