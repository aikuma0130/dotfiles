#!/bin/bash

# -e: パイプやサブシェルで実行したコマンドが1つでもエラーになったら直ちにシェルを終了する
# -u: パラメーター展開中に、設定していない変数があったらエラーとする
set -eu

if xcode-select --install; then
    echo
    echo "#############################################################"
    echo "Please install Xcode."
    echo "After that, Please re-exec bootstrap.sh"
    echo "#############################################################"
    echo
fi

DOTFILES=$HOME/dotfiles

if [ ! -d "$DOTFILES" ]; then
    git clone https://github.com/aikuma0130/dotfiles.git "$DOTFILES"
else
    cd "$DOTFILES"
    git stash
    git checkout master
    git pull origin master
fi

cd "$DOTFILES"

# install homebrew
if ! which brew > /dev/null 2>&1; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew bundle

for script in $(ls scripts/*.sh)
do
    sh $script
done

echo "DONE"
