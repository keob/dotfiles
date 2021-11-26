#
# ~/.profile
#

# EDITOR
export EDITOR=nvim

# LESS
export LESS="-SRXF"

# TERM
export TERM="xterm-256color"

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Rust
export CARGO_HOME=$HOME/.cargo

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PYTHONUSERBASE=$HOME/Develop/python

# RG
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/ripgreprc

# Mirrors
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# PATH
export PATH=$PATH:$GOROOT/bin:$GOBIN:$CARGO_HOME/bin:$HOME/.local/bin:$HOME/Develop/npm/bin:$PYTHONUSERBASE/bin
