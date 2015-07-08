#!/bin/sh
# http://zaka-think.com/linux/ubuntu/ubuntu-14-04-lamp-setting/
sudo apt-get update;
sudo apt-get install -y apache2;
firefox http://localhost;
sudo apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql;
mysql -u root -p;
sudo apt-get install -y php5 libapache2-mod-php5 php5-mcrypt;
sudo echo -e "<IfModule mod_dir.c>\n\tDirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm\n</IfModule>" >/etc/apache2/mods-enabled/dir.conf;
sudo service apache2 restart;
sudo echo -e "<?php\nphpinfo();\n?>" > /var/www/html/info.php;
firefox http://localhost/info.php;


