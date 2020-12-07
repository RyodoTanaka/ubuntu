#!/usr/bin/env bash
# Install ros foxy desktop #
sudo apt-get update
sudo apt-get install -y curl gnupg2 lsb-release
curl -Ls https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add -
sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt-get update
sudo apt-get install -y ros-foxy-desktop

# Enable ROS #
echo "source /opt/ros/foxy/setup.bash" >> /home/ubuntu/.bashrc
source /home/ubuntu/.bashrc

# Install rosdep vcstools #
sudo apt-get install -yq python3-rosdep
sudo apt-get install -yq python3-rosinstall
sudo apt-get install -yq python3-rosinstall-generator
sudo apt-get install -yq python3-wstool
sudo apt-get install -yq python3-vcstool
sudo apt-get install -yq python3-vcstools
sudo apt-get install -yq python3-colcon-common-extensions
sudo apt-get install -yq python3-argcomplete
# Init rosdep #
sudo rosdep init
rosdep update
