#!/bin/bash

set -e

echo "Starting the mysql daemon"
service mysql start

a2enmod headers
service apache2 restart

if [ -z "$1" ]
then
    exec "/usr/local/sbin/apache2 -D -foreground"
else
    exec "$1"
fi
