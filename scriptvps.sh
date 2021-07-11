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
cd ~
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/16.0.1+9/7147401fd7354114ac51ef3e1328291f/jdk-16.0.1_linux-x64_bin.tar.gz
sudo mkdir /usr/lib/jvm
cd /usr/lib/jvm
sudo tar -xvzf ~/jdk-16.0.1_linux-x64_bin.tar.gz
echo "/usr/lib/jvm/jdk-16.0.1/bin" >> /etc/environment
echo "JAVA_HOME="/usr/lib/jvm/jdk-16.0.1"" >> /etc/environment
echo "PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"" >> /etc/environment
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-16.0.1/bin/java" 0
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-16.0.1/bin/javac" 0
sudo update-alternatives --set java /usr/lib/jvm/jdk-16.0.1/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/jdk-16.0.1/bin/javac
update-alternatives --list java
update-alternatives --list javac
cd ~
rm -rf ~/jdk-16.0.1_linux-x64_bin.tar.gz
sudo apt install screen
git config --global user.name "jessy-damoiseau"
git config --global user.email "jessydamoiseau@gmail.com"
git clone https://github.com/jessy-damoiseau/servers.git
ssh-keygen
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
