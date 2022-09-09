#!/bin/bash

source /etc/profile

if [ -z $http_proxy ]
then

  sudo sed -r -i "/^(proxy|http_proxy|https_proxy)=$/d" /etc/profile

  echo "set proxy"
  sudo echo 'Acquire::http::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.conf
  sudo echo 'Acquire::https::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.conf

  sudo echo "export proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128\"" >> /etc/profile
  sudo echo "export https_proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128\"" >> /etc/profile
  sudo echo "export http_proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128"\" >> /etc/profile
  
  source /etc/profile

  git config --global http.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128
  git config --global https.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128

else

  echo "unset proxy"

  git config --global --unset https.proxy
  git config --global --unset http.proxy
  unset http_proxy
  unset https_proxy
  unset proxy

  sudo sed -r -i "s/^export\ (proxy|http_proxy|https_proxy)(.*)/\1=""/g" /etc/profile
  sudo echo "" > /etc/apt.conf

  source /etc/profile

fi
