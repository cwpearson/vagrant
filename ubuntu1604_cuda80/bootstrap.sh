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


# Install CUDA 8.0 GA2 and patch
echo "Downloading CUDA 8.0..."
curl -sSLO https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
curl -sSLO https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
apt-get update
apt-get install -y cuda-toolkit-8-0
echo 'export PATH=/usr/local/cuda/bin:$PATH' >> /home/vagrant/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> /home/vagrant/.bashrc

shred -u -z cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
shred -u -z cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
shred -u -z cmake-3.13.2-Linux-x86_64.sh