#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Go
export GOPATH=${HOME}/go
export GOBIN=${GOPATH}/bin
export GOROOT=/usr/local/go

# Rust
export CARGO_HOME=${HOME}/.cargo

# PATH
export PATH=${PATH}:${GOROOT}/bin:${GOBIN}:${CARGO_HOME}/bin:${HOME}/.local/bin
