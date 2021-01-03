#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if test -f .aliases ; then
	. ~/.aliases
fi

PS1='${arch_chroot:+($arch_chroot)}\[\033[01;32m\]\u@\[\033[01;36m\]\h:\[\033[01;33m\]\W\[\033[00m\]\$ '

export HISTCONTROL=ignoreboth:erasedups
export HISTFILE=~/.bash_history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTTIMEFORMAT='%F %T '
shopt -s histappend
shopt -s cmdhist

# Environment
export PATH=$PATH:$TOOLS:$GOBIN:$GOROOT/bin

# Tools
export TOOLS=$HOME/Tools

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# rust
source "$HOME/.cargo/env"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Mirrors
export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node"
export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"
