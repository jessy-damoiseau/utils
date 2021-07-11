#!/bin/bash
cd ~
touch .vimrc
echo "syntax on" > .vimrc
echo "set nu" >> .vimrc
echo "set mouse=a" >> .vimrc
echo "set tabstop=4" >> .vimrc
echo "set shiftwidth=4" >> .vimrc
sudo apt install zsh
sudo apt update
sudo apt install default-jre
sudo apt install default-jdk
sudo apt install git
git config --global user.name "jessy-damoiseau"
git config --global user.email "jessydamoiseau@gmail.com"
ssh-keygen
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
