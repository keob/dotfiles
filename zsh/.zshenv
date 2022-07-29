# EDITOR
export EDITOR=nvim

# GPG
export GPG_TTY=$(tty)

# LESS
export LESS="-F -R -X"
export LESSHISTFILE="-"

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go

# Rust
export CARGO_HOME=$HOME/.cargo

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# PATH
typeset -U path cdpath fpath manpath

path=(
    $path
    $GOROOT/bin
    $GOBIN
    $CARGO_HOME/bin
    $HOME/.local/bin
)
