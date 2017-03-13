#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install apache2 -y

if ! [ -L /var/www ]; then
	rm -rf /var/www/html
	ln -fs /vagrant /var/www/html
fi

sudo apt-get install php7.0 -y
sudo apt-get install libapache2-mod-php7.0
