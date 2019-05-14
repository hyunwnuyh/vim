#!/bin/bash
cp -rfv .vim/* ~/.vim
cp -fv .vimrc ~/.vimrc
ln -sfv ~/.vimrc ~/.config/nvim/init.vim
ln -sfv ~/.vim/colors/ ~/.config/nvim/colors/
sudo chmod -R 777 ~/.vim
sudo chmod 777 ~/.vimrc
sudo chmod 777 postinstall.sh
rm -r ~/.vim/bundle/*
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Install completed"
