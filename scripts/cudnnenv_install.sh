#!/bin/bash

pip install cudnnenv  

# cudnnのパスをrcに追加
echo 'export LD_LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc  
echo 'export CPATH=~/.cudnn/active/cuda/include:$CPATH' >> ~/.bashrc  
echo 'export LIBRARY_PATH=~/.cudnn/active/cuda/lib64:$LIBRARY_PATH' >> ~/.bashrc  

cudnnenv install --list
#cudnnenv install v51-cuda8
#cudnnenv version
#cudnnenv activate v51-cuda8
