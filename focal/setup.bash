#!/bin/bash
# Install basic packages #
sudo apt-get update
sudo apt-get -yq upgrade
sudo apt-get install -yq wget
sudo apt-get install -yq curl
sudo apt-get install -yq unzip
sudo apt-get install -yq git
sudo apt-get install -yq git-lfs
sudo apt-get install -yq build-essential
sudo apt-get install -yq emacs
sudo apt-get install -yq vim
sudo apt-get install -yq vlc
sudo apt-get install -yq gimp
sudo apt-get install -yq inkscape
sudo apt-get install -yq terminator
sudo apt-get install -yq net-tools
sudo apt-get install -yq arp-scan
sudo apt-get install -yq gcc
sudo apt-get install -yq g++
sudo apt-get install -yq cmake
sudo apt-get install -yq python3-pip
sudo apt-get install -yq lsb-release
sudo apt-get install -yq locales
sudo apt-get install -yq locate
sudo apt-get install -yq bash-completion
sudo apt-get install -yq tzdata
sudo apt-get -yq clean
sudo sudo rm -rf /var/lib/apt/lists/*


# Download font #
mkdir /home/ubuntu/.fonts
cd /home/ubuntu/.fonts && wget https://github.com/yuru7/HackGen/releases/download/v1.2.1/HackGen_v1.2.1.zip && unzip HackGen_v1.2.1.zip && rm -rf HackGen_v1.2.1.zip

# clone emacs setting #
cd /home/ubuntu && git clone https://github.com/RyodoTanaka/.emacs.d.git

# clone bash_extend #
cd /home/ubuntu && git clone https://github.com/RyodoTanaka/.bash_extend.git
echo "source /home/ubuntu/.bash_extend/ud.bash" >> /home/ubuntu/.bashrc
