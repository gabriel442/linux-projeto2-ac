#!/bin/bash

echo "Atualizando servidor"
apt-get update
apt-get upgrade -y

echo "Instalando programas"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando programa"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para diretório"
cd linux-site-dio-main
cp -R * /var/www/html/

