#!/bin/bash

# sudo-check
if [ $EUID -ne 0 ]; then
   echo  'Please run this script in sudo mode or as root user'
   exit
fi

echo "Token ?"
read token

cp proxy.sh /usr/local/bin/proxy

/home/rridane/launch_scripts/proxy.sh up
openfortivpn  --username=ext-rridane -p "" -o $token
