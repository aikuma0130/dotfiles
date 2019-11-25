#export PATH="$HOME/.pyenv/shims:$PATH"
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#
#if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
#    export WORKON_HOME=$HOME/.virtualenvs
#    source /usr/local/bin/virtualenvwrapper.sh
#fi
#
#export PATH="$HOME/.ndenv/bin:$PATH"
#if which ndenv > /dev/null; then eval "$(ndenv init -)"; fi
#
#export PATH="$HOME/.rbenv/bin:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source <(kubectl completion bash)

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# for work
if [ -f ${HOME}/.bash_profile_private ]; then
  . ${HOME}/.bash_profile_private
fi

alias gl='ghq list'
alias g='cd $(ghq root)/$(ghq list |peco)'
alias gb='hub browse $(ghq list | peco | cut -d "/" -f 2,3 )'
alias vig='cd $(ghq root)/$(ghq list |peco) && nvim'
