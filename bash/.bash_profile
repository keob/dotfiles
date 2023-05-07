#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOBIN

# Rust
export CARGO_HOME=$HOME/.cargo
export PATH=$PATH:${CARGO_HOME}/bin

# Local
export PATH=$PATH:$HOME/.local/bin
