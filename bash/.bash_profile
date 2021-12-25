#
# ~/.bash_profile
#

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Python
export PYTHONUSERBASE=$HOME/.python

# Rust
export CARGO_HOME=$HOME/.cargo

# PATH
export PATH=$PATH:$GOROOT/bin:$GOBIN:$CARGO_HOME/bin:$PYTHONUSERBASE/bin:$HOME/.npm/bin:$HOME/.local/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc
