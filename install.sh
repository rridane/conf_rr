#!/bin/sh

sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install tmux

cp ./.vimrc ~
cp ./.tmux.conf ~