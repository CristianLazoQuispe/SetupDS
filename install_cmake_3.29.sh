#!/bin/bash

#https://www.linuxcapable.com/how-to-install-cmake-on-ubuntu-linux/
sudo apt update && sudo apt upgrade
sudo apt install build-essential checkinstall zlib1g-dev libssl-dev -y
wget https://github.com/Kitware/CMake/releases/download/v3.29.0/cmake-3.29.0.tar.gz
tar -zxvf cmake-3.29.0.tar.gz
cd cmake-3.29.0/
./bootstrap
make
sudo make install