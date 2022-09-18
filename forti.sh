#!/bin/bash

echo "Token ?"
read token

/home/rridane/launch_scripts/proxy.sh up
openfortivpn  --username=ext-rridane -p "" -o $token
