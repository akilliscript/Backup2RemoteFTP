#!/bin/bash
USERNAME='root'
PASSWORD='YOURMYSQLROOTPASSWORD'
cd /backup
mysqldump -u $USERNAME -p$PASSWORD $2 > $2.sql
tar --ignore-failed-read --create --gzip --file=db-$1.tar.gz $2.sql
/usr/local/bin/uploadToFTP db-$1.tar.gz
rm -rf $2.sql db-$1.tar.gz
echo $1 "icin mysql yedekleme tamamlandi." >> /var/log/backup.log
# You may want change this info text by your language.
