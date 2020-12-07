#!/bin/bash
# Install basic packages #
sudo apt install -yq wget
sudo apt install -yq curl
sudo apt install -yq unzip
sudo apt install -yq git
sudo apt install -yq git-lfs
sudo apt install -yq build-essential
sudo apt install -yq emacs
sudo apt install -yq vim
sudo apt install -yq vlc
sudo apt install -yq gimp
sudo apt install -yq inkscape
sudo apt install -yq terminator
sudo apt install -yq net-tools
sudo apt install -yq arp-scan
sudo apt install -yq gcc
sudo apt install -yq g++
sudo apt install -yq cmake
sudo apt install -yq python-pip
sudo apt install -yq python3-pip
sudo apt install -yq lsb-release
sudo apt install -yq locales
sudo apt install -yq locate
sudo apt install -yq bash-completion
sudo apt install -yq tzdata

# Download font #
mkdir /home/ubuntu/.fonts
cd /home/ubuntu/.fonts && wget https://github.com/yuru7/HackGen/releases/download/v1.2.1/HackGen_v1.2.1.zip && unzip HackGen_v1.2.1.zip && rm -rf HackGen_v1.2.1.zip

# clone emacs setting #
cd /home/ubuntu && git clone https://github.com/RyodoTanaka/.emacs.d.git

# clone bash_extend #
cd /home/ubuntu && git clone https://github.com/RyodoTanaka/.bash_extend.git
echo "source /home/ubuntu/.bash_extend/ud.bash" >> /home/ubuntu/.bashrc
