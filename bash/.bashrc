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
alias lh='ls -lh'
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
alias dl='cd $HOME/Downloads'
alias doc='cd $HOME/Documents'
alias ga='git add'
alias gaa='git add .'
alias gst='git status'
alias gcm='git commit -m'
alias gco='git checkout'
alias gph='git push'
alias gpl='git pull'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias venv='source $HOME/venv/basic/bin/activate'

export HISTCONTROL=ignoreboth:erasedups  
export HISTFILE=~/.bash_history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTTIMEFORMAT='%F %T '
shopt -s histappend
shopt -s cmdhist

# Functions
# extracts the given file
x () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Environment
# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:$GOROOT/bin

# nvm
export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
