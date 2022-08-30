#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp ./.vimrc ~
cp ./.tmux.conf ~
cp ./.viebrc ~ 

#acquire 'Acquire::http::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.conf
#acquire 'Acquire::https::Proxy "http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128";' >> /etc/apt.con

#git config --global http.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128
#git config --global https.proxy http://CptLinuxWeb:LinuxWeb@10.33.50.30:3128
