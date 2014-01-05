#!/bin/bash

sudo rm /etc/nginx/sites-enabled/default

sudo ln -s $1 /etc/nginx/sites-enabled/$2
sudo service nginx restart
