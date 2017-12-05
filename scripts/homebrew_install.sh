#!/bin/bash

echo "inspired from http://vdeep.net/github-dotfiles"

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    colordiff
    "--without-etcdir zsh"
    zsh-completions
    python3
    lua
    "vim --with-lua"
    mysql
    postgresql
    sqlite
    ricty
    markdown
    gcc
    tmux 
    reattach-to-user-namespace
)

"brew tap..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/apache
brew tap sanemat/font

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    dropbox
    evernote
    bettertouchtool
    google-chrome
    google-japanese-ime
    slack
    iterm2
    libreoffice
    cyberduck
    vlc
    atom
    mactex
    mendeley-desktop
    skim
    kindle
    kindle-comic-converter
    skype
    anaconda
    adobe-acrobat-reader
    day-o
    macpass
    spotify
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

# to update maxtex
sudo tlmgr update --self --all

cat << END
cat << install xcode from appstore

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
