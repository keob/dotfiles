fpath=(
    $ZDOTDIR/comp
    $fpath
)

autoload -Uz compinit; compinit

autoload -Uz colors; colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.histfile
HISTORY_IGNORE="(clear|ls|la|lth|lh|ll|bg|fg|cd|cd -|cd ..|..*|exit|date|htop|top|path|env|printenv|startx)"

PROMPT="%B%F{green}%n%f@%F{blue%}%M%f %F{yellow}%1~%b%f %# "
# RPROMPT=""

setopt histignorealldups
setopt histignorespace
setopt histreduceblanks
# setopt sharehistory

setopt nobeep
setopt correct
setopt clobber
setopt appendcreate
setopt globdots
setopt rmstarsilent
setopt promptsubst
setopt interactivecomments
setopt completeinword
setopt multios

export LSCOLORS=exFxcxdxAxexbxHxGxcxBx

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*' list-colors ${LSCOLORS}

bindkey -e
bindkey ' ' magic-space
bindkey '^I' complete-word

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ll="ls -Alh"
alias la="ls -A"
alias lh="ls -lh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias md="mkdir -p"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias gaa="git add ."
alias gst="git status -sb"
alias gcm="git commit -m"
alias gco="git checkout"
alias gph="git push"
alias gpl="git pull"
alias tn="tmux new -s"

alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
