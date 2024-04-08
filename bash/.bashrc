#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[01;32m\]\u\[\e[m\]@\[\e[01;36m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[m\] \$ '

HISTIGNORE="clear:ls:la:lth:lh:ll:pwd:history:cd:cd -:cd ..:..:...:exit"
HISTCONTROL=ignoreboth:erasedups
HISTFILE=~/.bash_history
HISTTIMEFORMAT='%F %T '
HISTSIZE=10000

shopt -s cmdhist
shopt -s lithist
shopt -s dotglob
shopt -s histappend

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"

# EDITOR
export EDITOR=nvim

# GPG
export GPG_TTY=$(tty)

# LESS
export LESS="-F -R -X"
export LESSHISTFILE="-"

# Go
export GOPLSCACHE=/tmp

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Mirrors
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# Alias
alias ..="cd .."
alias ...="cd ../.."

alias la="ls -A"
alias lh="ls -lh"
alias ll="ls -Alh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias md="mkdir -p"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias gph="git push"
alias gpl="git pull"
alias gfh="git fetch"
alias gaa="git add ."
alias gco="git checkout"
alias gcm="git commit -m"
alias gst="git status -sb"
alias tn="tmux new -s"

mcd() {
    mkdir -p "$1"
    cd "$1"
}

fs() {
    du -sh "$1" | awk '{print $1}'
}
