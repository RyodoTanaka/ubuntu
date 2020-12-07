FROM dorowu/ubuntu-desktop-lxde-vnc:focal
LABEL maintainer="RyodoTanaka<groadpg@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq sudo && \
    rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p tmp/setup
COPY ./setup.bash /tmp/setup.bash
RUN sudo -U ubuntu source /tmp/setup.bash
ENV USER ubuntu
