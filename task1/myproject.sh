#!/usr/bin/env bash

sudo snap install flutter --classic
flutter sdk-path
flutter doctor

cd /vagrant/task1/myproject
git clone https://github.com/nikitattt/mit_flutter_hello_world.git
flutter build web

if ! [ -L /var/www ]; then
  ln -fs /vagrant/task1/myproject/mit_flutter_hello_world/build/web/index.html /var/www/html/myproject/index.html
fi