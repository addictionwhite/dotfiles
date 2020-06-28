#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


mv ~/dotfiles/.gvimrc ~/.gvimrc
mv ~/dotfiles/.vimrc ~/.vimrc

