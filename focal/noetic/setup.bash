#!/usr/bin/env bash
# Install ros melodic desktop full #
sudo apt-get -yq update
sudo apt-get -yq upgrade
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install -yq ros-noetic-desktop-full

# Install catkin tools #
sudo apt-get install -yq python3-catkin-tools

# Enable ROS #
echo "source /home/ubuntu/.bash_extend/ros.bash noetic" >> /home/ubuntu/.bashrc
source /home/ubuntu/.bashrc

# Install rosdep vcstools #
sudo apt-get install -yq python3-rosdep
sudo apt-get install -yq python3-rosinstall
sudo apt-get install -yq python3-rosinstall-generator
sudo apt-get install -yq python3-wstool
sudo apt-get install -yq python3-vcstool
sudo apt-get install -yq python3-vcstools
sudo apt-get install -yq python3-osrf-pycommon
# Init rosdep #
sudo rosdep init
rosdep update
