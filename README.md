# About
My basic ubuntu environment.  

### Ubuntu 18.04 LTS (bionic) base
- [bionic](https://github.com/RyodoTanaka/ubuntu/tree/master/bionic) : Ubuntu 18.04 LTS (bionic) basic environment.
- [bionic-melodic](https://github.com/RyodoTanaka/ubuntu/tree/master/bionic/melodic) : `bionic` + `ros-melodic-desktop-full` environment.
- [bionic-eloquent](https://github.com/RyodoTanaka/ubuntu/tree/master/bionic/eloquent) : `bionic` + `ros-eloquent-desktop` environment.
- [bionic-melodic-eloquent](https://github.com/RyodoTanaka/ubuntu/tree/master/bionic/melodic-eloquent) : `bionic` + `ros-melodic-desktop-full` + `ros-eloquent-desktop` environment.

### Ubuntu 20.04 LTS (focal) base
- [focal](https://github.com/RyodoTanaka/ubuntu/tree/master/focal) : Ubuntu 20.04 LTS (focal) basic environment.
- [focal-noetic](https://github.com/RyodoTanaka/ubuntu/tree/master/focal/noetic) : `focal` + `ros-noetic-desktop-full` environment.
- [focal-foxy](https://github.com/RyodoTanaka/ubuntu/tree/master/focal/foxy) : `foclal` + `ros-foxy-desktop` environment.
- [focal-noetic-foxy](https://github.com/RyodoTanaka/ubuntu/tree/master/foclal/noetic-foxy) : `focal` + `ros-noetic-desktop-full` + `ros-foxy-desktop` environment. 

# Build
### Download via DockerHub
```bash
$ docker pull ryodo/ubuntu:<tags>
```
### Build by DockerFile
```bash
$ docker build -t ryodo/ubuntu:<tags> .
```

# Launch
### 1. Launch docker image
Type following command.
If the command is rejected by permission, add `sudo` command on the top.
The following command uses `~/docker` directory as the share directory with the host.  
So, please make that directory before running.
```bash
docker run -p 6080:80 -p 5900:5900 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm -v /media:/media -v ~/docker:/home/ubuntu/docker ryodo/ubuntu:<tags>
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
