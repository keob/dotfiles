# EDITOR
export EDITOR=nvim

# GPG
export GPG_TTY=$(tty)

# LESS
export LESS="-F -R -X"

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# PATH
path=(
    $PATH
    $GOROOT/bin
    $GOBIN
    $HOME/.local/bin
)
