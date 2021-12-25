#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h \[\033[01;34m\]\W\[\033[00m\]\$ '

HISTIGNORE="clear:ls:la:lth:lh:ll:bg:fg:cd:cd -:cd ..:..*:exit:date:htop:top:path:env:printenv:startx"
HISTCONTROL=ignoreboth:erasedups
HISTFILE=~/.bash_history
HISTSIZE=10000
HISTTIMEFORMAT='%F %T '

shopt -s histappend
shopt -s cmdhist
shopt -s lithist

# EDITOR
export EDITOR=nvim

# LESS
export LESS="-SRXF"

# GPG
export GPG_TTY=$(tty)

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# RG
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/ripgreprc

# Mirrors
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# Alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias md="mkdir -p"
alias ll="ls -Alh"
alias la="ls -A"
alias lh="ls -lh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias gaa="git add -A"
alias gst="git status -sb"
alias gcm="git commit -m"
alias gco="git checkout"
alias gph="git push"
alias gpl="git pull"
alias tn="tmux new -s"

alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
