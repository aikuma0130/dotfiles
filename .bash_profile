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

export PATH="/usr/local/opt/ruby/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
#source <(kubectl completion bash)

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
