#!/bin/bash

# Reference From "https://github.com/jkjung-avt/jetson_nano/blob/master/install_basics.sh"
sudo apt-get update
sudo apt-get upgrade

set -e

if ! grep 'cuda/bin' ${HOME}/.bashrc > /dev/null ; then
  echo "** Add CUDA stuffs into ~/.bashrc"
  echo >> ${HOME}/.bashrc
  echo "export PATH=/usr/local/cuda/bin\${PATH:+:\${PATH}}" >> ${HOME}/.bashrc
  echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64\${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" >> ${HOME}/.bashrc
fi

sudo apt-get install python-pip python3-pip

mkdir -p ${HOME}/tensorRT
git clone https://github.com/jkjung-avt/tensorrt_demos ${HOME}/tensorRT

reboot
