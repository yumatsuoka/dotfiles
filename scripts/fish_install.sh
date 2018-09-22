#!/bin/bash

#install fish
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

#install fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# install theme
sudo apt-get install fonts-powerline
fisher omf/theme-agnoster

# install plugins
fisher install 0rax/fish-bd
fisher z
fisher fzf

