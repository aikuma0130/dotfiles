#!/bin/bash

if [[ -x '/bin/zsh' ]]; do
  echo "change shell to zsh"
  chsh -s /bin/zsh

  git clone --recursive https://github.com/aikuma0130/prezto.git "${HOME}/.zprezto"

  setopt EXTENDED_GLOB
  for rcfile in "${HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${HOME}/.${rcfile:t}"
  done
if

ln -svf $HOME/dotfiles/.config/nvim $HOME/.config/nvim
ln -svf $HOME/dotfiles/.globalrc $HOME/.globalrc
ln -svf $HOME/dotfiles/.jira.d $HOME/.jira.d
