#!/bin/bash

# SIGVerse Setup for HSR project
################################################################################
# Install ROS Bridge_suite
apt-get install ros-melodic-rosbridge-server

cd ~/HSR
mkdir -p ./download/
################################################################################
# Install Mongo C driver
cd ~/HSR/download
wget https://github.com/mongodb/mongo-c-driver/releases/download/1.4.2/mongo-c-driver-1.4.2.tar.gz
tar zxvf mongo-c-driver-1.4.2.tar.gz
cd mongo-c-driver-1.4.2
./configure
make
make install

################################################################################
# Install Mongo C++ driver
cd ~/HSR/download
wget https://github.com/mongodb/mongo-cxx-driver/archive/r3.0.3.tar.gz
tar zxvf r3.0.3.tar.gz
cd mongo-cxx-driver-r3.0.3/build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DLIBMONGOC_DIR=/usr/local -DLIBBSON_DIR=/usr/local ..
make EP_mnmlstc_core
make
make install

################################################################################