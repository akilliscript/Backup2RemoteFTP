# Backup2RemoteFTP
Simple creating backup file and upload to remote FTP.

## Installation
git clone https://github.com/gurkanbicer/Backup2RemoteFTP.git

cd Backup2RemoteFTP

mv uploadToFtp.sh /usr/local/bin/uploadToFTP

mv webBackup.sh /usr/local/bin/webBackup

mv mysqlBackup.sh /usr/local/bin/mysqlBackup

cd /usr/local/bin

chmod a+x uploadToFTP webBackup mysqlBackup

## Using
**uploadToFTP** "YOURFILEPATH" *# eg. uploadToFTP /root/file.txt*

**webBackup** "USERNAME" *# eg. webBackup "abc" for /home/abc/public_html*

**mysqlBackup** "USERNAME" "DATABASE" *# eg. mysqlBackup "abc" "abc_wp"*
