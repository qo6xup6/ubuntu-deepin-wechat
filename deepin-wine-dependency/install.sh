#!/bin/bash
echo '准备添加32位支持'
sudo dpkg --add-architecture i386
echo 'Download and add the repository key'
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
echo 'Add the repository'
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ '$(lsb_release -cs)' main'
echo '添加成功，准备刷新apt缓存信息...'
sudo apt update
echo 'Then install one of the following packages'
sudo apt install --install-recommends winehq-stable
echo '即将开始安装...'
sudo dpkg -i *.deb
echo '安装完成，正在自动安装依赖...'
sudo apt install -f

