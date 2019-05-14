#!/bin/bash
rm -rfv .vim
rm -fv .vimrc
mkdir .vim
cp -rfv ~/.vim/* .vim
cp -fv ~/.vimrc .vimrc
