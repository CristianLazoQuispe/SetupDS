#!/bin/bash

#https://1genomics.com/lightgbm_gpu/
sudo apt update && sudo apt install -y cmake ocl-icd-opencl-dev libboost-all-dev
sudo apt-get install --no-install-recommends git cmake build-essential libboost-dev libboost-system-dev libboost-filesystem-dev

export LIBOPENCL=/usr/local/nvidia/lib64
#mkdir -p /etc/OpenCL/vendors && echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd

git clone --recursive https://github.com/Microsoft/LightGBM 
cd LightGBM && mkdir build && cd build
cmake -DUSE_GPU=1 ..
make -j8
pip uninstall lightgbm
cd .. ; bash ./build-python.sh install --gpu

# if has issues on "import lightgbm as lgbm"
#conda install -c conda-forge libstdcxx-ng=12



