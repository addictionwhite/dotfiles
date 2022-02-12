#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


ln -sf  ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf  ~/dotfiles/.vimrc ~/.vimrc
ln -sf  ~/dotfiles/.tmux.conf ~/.tmux.conf

