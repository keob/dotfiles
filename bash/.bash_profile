#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Rust
export CARGO_HOME=$HOME/.cargo

# PATH
export PATH=$PATH:$GOROOT/bin:$GOBIN:$CARGO_HOME/bin:$HOME/.local/bin
