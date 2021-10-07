# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Rust
export CARGO_HOME=$HOME/.cargo

# Python
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PYTHONUSERBASE=$HOME/Develop/python

# RG
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/ripgreprc

# Mirrors
export RUSTUP_DIST_SERVER=https://mirror.sjtu.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirror.sjtu.edu.cn/rust-static/rustup

# LESS
export LESS="-SRXF"

# PATH
typeset -U PATH path
path=("$path[@]" $GOROOT/bin $GOBIN $CARGO_HOME/bin $HOME/.local/bin $HOME/Develop/npm/bin $PYTHONUSERBASE/bin)
export PATH
