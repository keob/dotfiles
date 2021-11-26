#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

PS1='\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h \[\033[01;33m\]\W\[\033[00m\]\$ '

export HISTIGNORE="clear:ls:la:lth:lh:ll:bg:fg:cd:cd -:cd ..:..*:exit:date:* --help:btop:htop:top:path:env:printenv:startx"
export HISTCONTROL=ignoreboth:erasedups
export HISTFILE=~/.bash_history
export HISTSIZE=10000
export HISTTIMEFORMAT='%F %T '
shopt -s histappend
shopt -s cmdhist
shopt -s lithist

# GPG
export GPG_TTY=$(tty)
