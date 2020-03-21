#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='${arch_chroot:+($arch_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
# PS1='[\u@\h \W]\$ '

# Alias
alias ..='cd ..'
alias ...='cd ../..'
alias vi='nvim'
alias vim='nvim'
alias cls='clear'
alias md='mkdir'
alias ll='ls -l'
alias la='ls -a'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i' 
alias df='df -h'
alias wget='wget -c'
alias work='cd $HOME/workspace'
alias github='cd $HOME/github'
alias dl='cd $HOME/Downloads'
alias dc='cd $HOME/Documents'
alias ga='git add'
alias gst='git status'
alias gcm='git commit -m'
alias gco='git checkout'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias venv='source $HOME/venv/basic/bin/activate'

# Environment
# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:$GOROOT/bin

# nvm
export NVM_DIR="$HOME/.nvm"
export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

