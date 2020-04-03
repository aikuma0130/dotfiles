#!/bin/bash

# Enable "natural" (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool ture

sudo ln -svf $HOME/dotfiles/limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo ln -svf $HOME/dotfiles/limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist
