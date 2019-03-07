#set -U fish_user_paths /usr/local/bin $fish_user_paths

## from .bashrc
# alias
#alias vim="$HOME/local/bin/vim"
alias vi=vim
#alias vim=nvim
alias "pip_update_all"="pip list --outdated --format=legacy | awk '{print $1}' | xargs pip install -U pip"
#export TERM=xterm-256color
#export lscolors=gxfxcxdxbxegedabagacad
#set  -q LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'


## CUDA
set -x PATH "/usr/local/cuda/bin" $PATH
set -x CUPY_CACHE_DIR "/data/$USER"
#set -x LD_LIBRARY_PATH "/usr/local/cuda/lib64" $LD_LIBRARY_PATH
#set -x CPATH "/usr/local/cuda/include" $CPATH
#set -x LIBRARY_PATH "/usr/local/cuda/lib64" $LIBRARY_PATH
#set -x CUDA_PATH "/usr/local/cuda"

### cudnnenv and cupy
set -x LD_LIBRARY_PATH "/home/yuma/.cudnn/active/cuda/lib64" $LD_LIBRARY_PATH
set -x CPATH "/home/yuma/.cudnn/active/cuda/include" $CPATH
set -x LIBRARY_PATH "/home/yuma/.cudnn/active/cuda/lib64" $LIBRARY_PATH
#set -x CFLAGS "-I/home/yuma/.cudnn/active/cuda/include:-I/usr/local/cuda/include"
#set LDFLAGS "-L/home/yuma/.cudnn/active/cuda/lib64"

# Python
set -gx PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PATH "$PYENV_ROOT/bin"
status --is-interactive; and . (pyenv init - | psub)


