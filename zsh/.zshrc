# fpath=($fpath)
# cdpath=()

autoload -Uz compinit; compinit
autoload -Uz colors; colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.histfile
HISTORY_IGNORE="(clear|ls|la|lth|lh|ll|pwd|history|cd|cd -|cd ..|...|exit)"

PROMPT="%B%F{green}%n%f@%F{cyan}%M%f %F{blue}%1~%f%b %# "
# RPROMPT=""

# Direnv
eval "$(direnv hook zsh)"

setopt histignorealldups
setopt histignorespace
setopt histreduceblanks
# setopt sharehistory

setopt nobeep
# setopt correct
setopt clobber
setopt appendcreate
setopt globdots
setopt rmstarsilent
setopt promptsubst
setopt interactivecomments
setopt completeinword
setopt multios

zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
zstyle ':completion:*' group-name ''
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'

bindkey -e
bindkey ' ' magic-space
bindkey '^I' complete-word
bindkey '\e[3~' delete-char

alias ..="cd .."
alias ...="cd ../.."

alias la="ls -A"
alias lh="ls -lh"
alias ll="ls -Alh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias md="mkdir -p"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias gpl="git pull"
alias gph="git push"
alias gaa="git add ."
alias gco="git checkout"
alias gcm="git commit -m"
alias gst="git status -sb"
alias tn="tmux new -s"

mcd() {
    mkdir -p "$1"
    cd "$1"
}

fs() {
    du -sh "$1" | awk '{print $1}'
}
