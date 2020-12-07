# About
My basic ubuntu environment.  
In this image, mainly, following software are already installed.
### Tools
- wget
- curl
- unzip
- git
- git-lfs
- build-essential
- vim
- emacs
- vlc
- gimp
- inkscape
- terminator
- net-tools
- arp-scan
- gcc
- g++
- cmake
- python-pip
- python3-pip

# Build
### Download via DockerHub
```bash
$ docker pull ryodo/ubuntu:bionic
```
### Build by DockerFile
```bash
$ docker build -t ryodo/ubuntu:bionic .
```

# Launch
### 1. Launch docker image
Type following command.
If the command is rejected by permission, add `sudo` command on the top.
The following command uses `~/docker` directory as the share directory with the host.  
So, please make that directory before running.
```bash
docker run -p 6080:80 -p 5900:5900 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm -v /media:/media -v ~/docker:/home/ubuntu/docker ryodo/ubuntu:bionic
```
### 2. Launch GUI client
There are two ways to launch GUI client.
#### 1. Browser
Launch your browser and access to  
`http://localhost:6080`
#### 2. VNC client
Launch your VNC client and the vnc server is  
`vnc://localhost:5900`  
With the above command, you do not set the login password.  
Thus, every one on the network can login to the launched image. Be careful.

# For more details
https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc
