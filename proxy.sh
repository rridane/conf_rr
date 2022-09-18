#!/bin/bash

# sudo-check$
if [ $EUID -ne 0 ]; then
   echo  'Please run this script in sudo mode or as root user'
   exit
fi

if [[ $1 =  "down" ]]
then

  echo "disabling tessi proxy"

  perl -i -pe "s/.*(?=Proxy 12)//g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=NoProxy \*)//g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=Proxy 10)/#/g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=NoProxy loc)/#/g" /etc/cntlm.conf

  systemctl restart cntlm

elif [[ $1 = "up" ]]
then

  echo "enabling tessi proxy"

  perl -i -pe "s/.*(?=Proxy 12)/#/g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=NoProxy \*)/#/g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=Proxy 10)//g" /etc/cntlm.conf
  perl -i -pe "s/.*(?=NoProxy loc)//g" /etc/cntlm.conf

  systemctl restart cntlm

fi
