#!/bin/bash

sudo apt-get -y install curl

cd $1

curl -O https://go.googlecode.com/files/go1.1.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.1.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin
