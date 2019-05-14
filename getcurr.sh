#!/bin/bash
rm -rfv .vim
rm -fv .vimrc
mkdir .vim
cp -rfv ~/.vim/* .vim
cp -fv ~/.vim/.ycm_extra_conf.py .vim/.ycm_extra_conf.py
cp -fv ~/.vimrc .vimrc
rm -rfv snips
mkdir snips
cp -rfv .vim/bundle/vim-snippets/snippets snips
cp -rfv .vim/bundle/vim-snippets/UltiSnips snips
