# EDITOR
export EDITOR=nvim

# LESS
export LESS="-SRXF"

# GPG
export GPG_TTY=$(tty)

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Rust
export CARGO_HOME=$HOME/.cargo

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PYTHONUSERBASE=$HOME/.python

# RG
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/ripgreprc

# Mirrors
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# PATH
typeset -U path

path=(
    $PATH
    $GOROOT/bin
    $GOBIN
    $CARGO_HOME/bin
    $HOME/.npm/bin
    $PYTHONUSERBASE/bin
    $HOME/.local/bin
    .
)

export PATH
