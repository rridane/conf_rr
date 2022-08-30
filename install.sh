#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
apt install gawk

cp ./.vimrc ~
cp ./.tmux.conf ~
cp ./.viebrc ~ 
cp ./.bash_profile ~/.bash_aliases

source ~/.bash_aliases
