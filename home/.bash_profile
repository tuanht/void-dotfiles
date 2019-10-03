parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function httpless {
    # `httpless example.org'
    http --pretty=all --print=hb "$@" | less -R;
}

export PS1="\[\033[36m\]\u\[\033[m\]\[\033[32m\]:\[\033[33;1m\]\W\[\033[m\]\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export LC_ALL=C
export PATH="/usr/local/sbin:$PATH"

