#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -e $HOME/.aliases ]; then
	source $HOME/.aliases
fi

PS1='${arch_chroot:+($arch_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
# PS1='[\u@\h \W]\$ '

export HISTCONTROL=ignoreboth:erasedups  
export HISTFILE=~/.bash_history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTTIMEFORMAT='%F %T '
shopt -s histappend
shopt -s cmdhist

# Functions
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

md5check() {
    md5sum "$1" | grep "$2";
}


# Environment

export PATH=$PATH:$TOOLS:$GOBIN:$GOROOT/bin

# Tools
export TOOLS=$HOME/Tools

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# nvm
export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# thefuck
eval "$(thefuck --alias)"
