
# CUDA
export CUDA_PATH=/usr/local/cuda
#export CUDA_ROOT=/usr/local/cuda
#export CUDA_HOME=/usr/local/cuda
export PATH=/usr/local/cudabin:/usr/local/cuda/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
#export LD_LIBRARY_PATH=/usr/local/cuda/include:$LD_LIBRARY_PATH
#export CPATH=/usr/local/cuda/include:$CPATH
# 新しく追加
export CUDA_INC_DIR=/usr/local/cuda/bin:$CUDA_INC_DIR
#export CPATH=/usr/local/cuda/include:$CPATH
export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH


export CUPY_CACHE_DIR=/data/yuma

# caffe
#export LD_LIBRARY_PATH=/opt/caffe/build/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/opt/caffe/build/tools:$LD_LIBRARY_PATH
#export CAFFE_ROOT=/opt/caffe
# export CAFFE_ROOT=/opt/caffe/build/lib
# LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
#export CAFFE_HOME=/usr/local/caffe

# alias
alias ls="ls --color=auto"
alias vim="$HOME/local/bin/vim"
alias vi=vim
export TERM=xterm-256color
#alias zsh="$HOME/local/bin/zsh"

## mxnet
#export PYTHONPATH=/home/yuma/mxnet//python:/opt/caffe/python/:
#export PYTHONPATH=/home/yuma/mxnet//python:/home/yuma/mxnet//python:/opt/caffe/python/:
#export PYTHONPATH=/home/yuma/mxnet//python:/home/yuma/mxnet//python:/home/yuma/mxnet//python:/opt/caffe/python/:

# Python
#export PYTHONPATH=$HOME/caffe2/:/opt/caffe/python/:$PYTHONPATH
export PYTHONIOENCODING=utf_8
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#export PYTHONPATH=/path/to/opencv/lib/python2.7/dist-packages:$PYTHONPATH
eval "$(pyenv init -)"

## cudnnenv
export CPATH=/home/yuma/.cudnn/active/cuda/include
export LIBRARY_PATH=/home/yuma/.cudnn/active/cuda/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=/home/yuma/.cudnn/active/cuda/lib64:$LD_LIBRARY_PATH
export CFLAGS=-I/home/yuma/.cudnn/active/cuda/include
#export CFLAGS=-I/home/yuma/.cudnn/active/cuda/include:/usr/local/cuda/include
export LDFLAGS=-L/home/yuma/.cudnn/active/cuda/lib64
#export LDFLAGS=-L/home/yuma/.cudnn/active/cuda/lib64:/usr/local/cuda/lib64
