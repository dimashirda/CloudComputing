#!/usr/bin/env bash
apt-get update
apt-get install software-properties-common python-software-properties -y
apt-get install -y apache2

add-apt-repository ppa:ondrej/php -y
apt-get update
apt-cache search php7
apt-get install -y php7.0
