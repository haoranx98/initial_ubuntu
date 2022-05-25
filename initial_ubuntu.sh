#! /usr/bin/bash

apt update -y
apt upgrade -y
apt install vim git gcc g++ build-essential cmake cmake-qt-gui ibus-libpinyin ntpdate -y
apt install wget curl axel -y

ntpdate time.windows.com
hwclock --localtime --systohc

add-apt-repository ppa:mozillateam/ppa -y
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

sudo apt install firefox -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb 

wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb
dpkg -i code* -y

wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.24.11947.tar.gz
tar -zxvf jetbrains-toolbox-1.24.11947.tar.gz
cd jet*
apt install libfuse-dev -y
./jetbrains-toolbox
apt install ubuntu-restricted-extras -y
apt install chrome-gnome-shell gnome-tweaks -y
apt install gnome-shell-extension-manager -y
apt install gnome-shell-extension-prefs -y
axel https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb
dpkg -i baidunetdisk_4.3.0_amd64.deb
wget https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.4_amd64.deb
dpkg -i qqmusic_1.1.4_amd64.deb
wget https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
dpkg -i netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb'
wget https://archive.ubuntukylin.com/software/pool/partner/weixin_2.1.1_amd64.deb
dpkg -i weixin_2.1.1_amd64.deb


