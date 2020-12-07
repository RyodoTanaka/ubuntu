FROM dorowu/ubuntu-desktop-lxde-vnc:bionic
LABEL maintainer="RyodoTanaka<groadpg@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq wget curl unzip git git-lfs build-essential vim emacs vlc gimp inkscape terminator net-tools arp-scan gcc g++ cmake python-pip python3-pip sudo lsb-release locales bash-completion tzdata gosu && \
    rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
COPY ./.emacs.d/ /home/ubuntu/.emacs.d/
ENV USER ubuntu
