#!/bin/bash

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

source .bashrc
pyenv install --list

#py_version = "anaconda3-2.5.0"
#pyenv install $py_version
#pyenv rehash
#pyenv global $py_version
#python --version

