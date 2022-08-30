#!/bin/bash

source /etc/environment

if [ -z $http_proxy ]
then

  sed -r -i "/^(proxy|http_proxy|https_proxy)=$/d" /etc/environment

  echo "set proxy"
  echo 'Acquire::http::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.conf
  echo 'Acquire::https::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.conf

  echo "proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128\"" >> /etc/environment
  echo "https_proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128\"" >> /etc/environment
  echo "http_proxy=\"http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128"\" >> /etc/environment
  
  source /etc/environment

  git config --global http.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128
  git config --global https.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128

else

  echo "unset proxy"

  git config --global --unset https.proxy
  git config --global --unset http.proxy
  unset http_proxy
  unset https_proxy
  unset proxy

  sed -r -i "s/^(proxy|http_proxy|https_proxy)(.*)/\1=""/g" /etc/environment

  source /etc/environment

fi
