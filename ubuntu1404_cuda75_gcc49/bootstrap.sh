#!/usr/bin/env bash

# Install some build tools
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y curl gcc-4.9 g++-4.9

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

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20
update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
update-alternatives --set cc /usr/bin/gcc
update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
update-alternatives --set c++ /usr/bin/g++

# overwrite with zeros so disk can be compacted during vagrant package
shred -u -z cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
shred -u -z chmod +x cmake-3.13.2-Linux-x86_64.sh