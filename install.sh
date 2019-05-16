#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
pip2 install --user neovim
pip3 install --user neovim
sudo apt install neovim

$dir_vim = "~/.vim"
$dir_nvim = "~/.config/nvim"
if ! [ -d "$dir_vim" ]; then
    mkdir -p "$dir_vim"
fi
cp -rfv .vim/* ~/.vim
cp -fv .vim/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
cp -fv .vimrc ~/.vimrc
if ! [ -d "$dir_nvim" ]; then
    mkdir -p "$dir_nvim"
fi
ln -sfv ~/.vimrc ~/.config/nvim/init.vim
ln -sfv ~/.vim/colors/ ~/.config/nvim/colors/
sudo chmod -R 777 ~/.vim
sudo chmod 777 ~/.vimrc
sudo chmod 777 postinstall.sh
rm -r ~/.vim/bundle/*
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
if ! [ -f ~/.bash_aliases] ; then
    touch ~/.bash_aliases
        echo "alias vi=\"nvim\"" >>~/.bash_aliases
        echo "alias vim=\"nvim\"" >>~/.bash_aliases
else
    if ! [grep "alias vi=\"nvim\"" ~/.bash_aliases] ;then
        echo "alias vi=\"nvim\"" >>~/.bash_aliases
    fi
    if ! [grep "alias vim=\"nvim\"" ~/.bash_aliases] ;then
        echo "alias vim=\"nvim\"" >>~/.bash_aliases
    fi
fi
echo "Install completed"
