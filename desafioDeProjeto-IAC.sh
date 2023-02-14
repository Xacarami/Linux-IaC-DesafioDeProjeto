#!/bin/bash

echo atualizando sistema...
apt-get update
apt-get upgrade -y

echo instalando apache2
apt-get install apache2 -y

echo instalando unzip
apt-get install unzip -y

echo limpando arquivos web apache2
rm /var/www/html/index.html

echo baixando arquivo zip dentro da pasta tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cp -r linux-site-dio-main/* /var/www/html
rm -r /tmp/linux-site-dio-main

echo Site no ar e sistema atualizado.
