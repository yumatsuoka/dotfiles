#!/bin/bash
# https://gist.github.com/yumatsuoka/d8a31742c572f0c20229dc7847a8c08b

packagelist=(

#日本語化パッケージ
     "ubuntu-defaults-ja"
     "language-pack-ja"
     "language-pack-kde-ja"
     "language-pack-gnome-ja"
     "kde-l10n-ja"
     "manpages-ja"
     "manpages-ja-dev"
     "fcitx-mozc"
     "ibus-mozc"

#開発環境
     "build-essential"
     "aptitude"
     "cmake"
     "cmake-qt-gui"
     "cmake-curses-gui"
     "automake"
     "libtool"
     "git"
     "gitk"
     "meld"
     "libboost-all-dev"
     "lua5.2"
     "lua5.2-dev"
     "luajit"
     "ruby-dev"
     "ncurses-dev"
     "vim-gnome"
     "ssh"
     "build-dep"
     "tmux"

     "python3-dev"
     "python3-pip"
     "python-pip"
     "python-dev"
     "python-numpy"
     "swig"
     "default-jdk"
)

env LANG=C 

sudo apt-get update
sudo apt-get upgrade

echo "start apt-get install apps..."
for list in ${packagelist[@]}; do
    sudo apt-get install -y ${list}
done

