#!/bin/sh

# Launch it as root

apt update && apt upgrade
apt install curl apache2 php php-cli libapache2-mod-php composer mysql-server mysql-client php-mysql phpmyadmin
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
rm -f /var/www/html/index.html
touch /var/www/html/index.php
sudo echo "<?php phpinfo(); ?>" > /var/www/html/index.php

service apache2 restart
