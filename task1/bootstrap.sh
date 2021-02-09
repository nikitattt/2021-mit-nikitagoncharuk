#!/usr/bin/env bash

apt-get update
apt-get install -y nginx
systemctl enable nginx

if ! [ -L /var/www ]; then
  rm -rf /var/www/html/*
  ln -fs /vagrant/task1/nginx-task1.conf /etc/nginx/conf.d/nginx-task1.conf
  ln -fs /vagrant/task1/index.html /var/www/html/index.html
fi