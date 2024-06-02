#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y software-properties-common
yes "" | sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install -y python3.8
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
yes "" | sudo add-apt-repository ppa:savoury1/ffmpeg4
sudo apt-get update -y
sudo apt-get install -y ffmpeg
python3.8 --version
