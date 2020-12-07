#!/usr/bin/env bash
# Install ros eloquent desktop #
sudo apt-get update
sudo apt-get install -y curl gnupg2 lsb-release
curl -Ls https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add -
sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt-get update
sudo apt-get install -y ros-eloquent-desktop

# Install ros melodic desktop full #
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install -yq ros-melodic-desktop-full
# Install catkin tools #
sudo apt-get install -yq python3-catkin-tools

# Enable ROS #
echo "#source /opt/ros/melodic/setup.bash" >> /home/ubuntu/.bashrc
echo "#source /opt/ros/eloquent/setup.bash" >> /home/ubuntu/.bashrc
source /home/ubuntu/.bashrc

# Install rosdep vcstools #
sudo apt-get install -yq python3-rosinstall
sudo apt-get install -yq python3-rosinstall-generator
sudo apt-get install -yq python3-wstool
sudo apt-get install -yq python3-vcstool
sudo apt-get install -yq python3-vcstools
sudo apt-get install -yq python3-colcon-common-extensions
sudo apt-get install -yq python3-argcomplete
sudo apt-get install -yq python3-catkin-pkg
sudo apt-get install -yq python3-rosdistro
sudo apt-get install -yq python3-rospkg
sudo apt-get install -yq python3-rosdep
# Init rosdep #
sudo rosdep init
rosdep update
