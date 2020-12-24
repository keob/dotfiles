#
# ~/.profile
#

# Environment
export PATH=$PATH:$TOOLS:$GOBIN:$GOROOT/bin

# Tools
export TOOLS=$HOME/Tools

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# thefuck
eval "$(thefuck --alias)"

# Mirrors
export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node"
