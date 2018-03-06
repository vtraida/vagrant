#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /host_files /var/www/html
fi