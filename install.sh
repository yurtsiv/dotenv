#!/bin/bash

if [ -z $1 ]
then
  echo "Provide a directory name for i3 config"
  exit 1
fi

git submodule update --init --recursive

rm -rf ~/.vim
ln -s ~/dotfiles/vimrc ~/.vim

rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

rm -rf ~/.config/sublime-text-3/Packages/User/*
ln -s ~/dotfiles/sublime/'Default (Linux).sublime-keymap' ~/.config/sublime-text-3/Packages/User/'Default (Linux).sublime-keymap'
ln -s ~/dotfiles/sublime/'Package Control.sublime-settings' ~/.config/sublime-text-3/Packages/User/'Package Control.sublime-settings'
ln -s ~/dotfiles/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

rm -rf ~/.config/i3 ~/.config/i3blocks

mkdir ~/.config/i3
mkdir ~/.config/i3blocks

I3_CONFIG_FOLDER="~/dotfiles/i3/$1"

ln -s "$I3_CONFIG_FOLDER/i3" ~/.config/i3/config
ln -s "$I3_CONFIG_FOLDER/i3blocks" ~/.config/i3blocks
