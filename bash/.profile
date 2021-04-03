#!/bin/bash

#
# ~/.profile
#

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Mirrors
export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"

# Environment
export PATH=$PATH:$GOROOT/bin:$GOBIN:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.npm/bin
