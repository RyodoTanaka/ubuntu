FROM ryodo/ubuntu:bionic
LABEL maintainer="RyodoTanaka<groadpg@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq sudo && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p tmp/setup
COPY ./setup.bash /tmp/setup.bash
RUN sudo -u ubuntu /tmp/setup.bash
ENV USER ubuntu
