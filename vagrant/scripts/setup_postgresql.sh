#!/bin/bash

sudo pg_dropcluster --stop 9.1 main
sudo pg_createcluster --start --locale en_US.UTF-8 9.1 main

# sudo su postgres -c psql
# CREATE ROLE $1 LOGIN SUPERUSER PASSWORD $2;
# \q
