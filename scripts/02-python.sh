#!/bin/bash

set -eu

# For Mojave or higher
#if [ -f /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg ]; then
#    sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
#fi
#
source ~/.bash_profile
#
#pyenv install 2.7.10
#pyenv install 3.6.0
#
#pyenv virtualenv 2.7.10 py2neovim
#pyenv virtualenv 3.6.0 py3neovim
#
#pyenv global py2neovim
pip install neovim

# for gtags
pip install pygments

#pyenv global py3neovim
pip3 install neovim

# for gtags
pip3 install pygments

#pyenv global system
