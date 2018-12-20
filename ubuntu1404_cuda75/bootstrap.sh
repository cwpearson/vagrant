#!/usr/bin/env bash

# Install some build tools
apt-get update
apt-get install -y curl gcc g++

# Install CMake
mkdir -p /home/vagrant/software/cmake-3.13.2
curl -sSLO https://github.com/Kitware/CMake/releases/download/v3.13.2/cmake-3.13.2-Linux-x86_64.sh
chmod +x cmake-3.13.2-Linux-x86_64.sh
./cmake-3.13.2-Linux-x86_64.sh --prefix=/home/vagrant/software/cmake-3.13.2 --skip-license
echo 'export PATH=/home/vagrant/software/cmake-3.13.2/bin:$PATH' >> /home/vagrant/.bashrc


# Install CUDA 7.5
echo "Downloading CUDA 7.5..."
curl -sSLO http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
dpkg -i cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
apt-get update
apt-get install -y cuda-toolkit-7-5
echo 'export PATH=/usr/local/cuda/bin:$PATH' >> /home/vagrant/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> /home/vagrant/.bashrc
