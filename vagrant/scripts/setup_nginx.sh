#!/bin/bash

sudo rm /etc/nginx/sites-enabled/default

sudo ln -s /vagrant/vagrant/config/nginx.conf /etc/nginx/sites-enabled/$1
sudo service nginx restart
