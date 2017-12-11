#!/bin/bash

#Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
#!/bin/bash
ln -s /vagrant /var/www/html

service httpd start

#PHP
yum install -y php php-cli php-devel php-mysql

#Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/tolegh/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/tolegh/vagrant/master/files/info.php

service httpd restart
