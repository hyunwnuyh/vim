#!/bin/bash
cp -rfv .vim/* ~/.vim
cp -fv .vimrc ~/.vimrc
ln -sfv ~/.vimrc ~/.config/nvim/init.vim
ln -sfv ~/.vim/colors/ ~/.config/nvim/colors/
chmod -R 777 ~/.vim
chmod 777 ~/.vimrc
echo "Install completed"