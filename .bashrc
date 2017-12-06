# alias
alias vi=vim
alias vim="$HOME/local/bin/vim"
alias ls="ls --color=auto"
export TERM=xterm-256color
#alias zsh="$HOME/local/bin/zsh"


# CUDA
export CUDA_PATH=/usr/local/cuda
export CUPY_CACHE_DIR=/data/yuma
#export CPATH=/usr/local/cuda/include:$CPATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH
export PATH=/usr/local/cudabin:/usr/local/cuda/bin:/usr/local/bin:$PATH

## cudnnenv and cupy
export CPATH=/home/yuma/.cudnn/active/cuda/include
export LIBRARY_PATH=/home/yuma/.cudnn/active/cuda/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=/home/yuma/.cudnn/active/cuda/lib64:$LD_LIBRARY_PATH
export CFLAGS=-I/home/yuma/.cudnn/active/cuda/include
export LDFLAGS=-L/home/yuma/.cudnn/active/cuda/lib64

# caffe
#export CAFFE_ROOT=/opt/caffe
#export LD_LIBRARY_PATH=/opt/caffe/build/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/opt/caffe/build/tools:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
#export PYTHONPATH=$HOME/caffe2/:/opt/caffe/python/:$PYTHONPATH

## mxnet
#export PYTHONPATH=/home/yuma/mxnet//python:/opt/caffe/python/:
#export PYTHONPATH=/home/yuma/mxnet//python:/home/yuma/mxnet//python:/opt/caffe/python/:
#export PYTHONPATH=/home/yuma/mxnet//python:/home/yuma/mxnet//python:/home/yuma/mxnet//python:/opt/caffe/python/:

# Python
export PYTHONIOENCODING=utf_8
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#export PYTHONPATH=/path/to/opencv/lib/python2.7/dist-packages:$PYTHONPATH
