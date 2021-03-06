#!/usr/bin/env bash

sudo apt-get install -y subversion cmake g++

sudo mkdir -p /llvm-3.7
sudo chmod -R 777 /llvm-3.7

svn co http://llvm.org/svn/llvm-project/llvm/trunk /llvm-3.7
svn co http://llvm.org/svn/llvm-project/cfe/trunk /llvm-3.7/tools/clang
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk /llvm-3.7/tools/clang/tools/extra
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk /llvm-3.7/projects/compiler-rt

sudo fallocate -l 10g /mnt/10GB.swap
sudo chmod 600 /mnt/10GB.swap
sudo mkswap /mnt/10GB.swap
sudo swapon /mnt/10GB.swap

cd /llvm-3.7
mkdir build
cd build
cmake ..
make
sudo make install
