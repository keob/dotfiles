fpath=(
    $ZDOTDIR/comp
    $fpath
)

plugins=(
)

for plugin ($plugins) {
    if [[ -f "$ZDOTDIR/plugins/$plugin.plugin.zsh" ]] {
        source $ZDOTDIR/plugins/$plugin.plugin.zsh
    }
}

autoload -Uz compinit; compinit

autoload -Uz colors; colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.histfile
HISTORY_IGNORE="(clear|ls|la|lth|lh|ll|bg|fg|cd|cd -|cd ..|..*|exit|date|* --help|btop|htop|top|path|env|printenv|startx)"

PROMPT="%B%F{green}%n%f@%F{blue%}%M%f %F{yellow}%1~%b%f %# "
# RPROMPT=""

local HELPDIR=/usr/share/zsh/$ZSH_VERSION/help
unalias run-help
autoload -Uz run-help

setopt histignorealldups
setopt histignorespace
setopt histreduceblanks
# setopt sharehistory

setopt clobber
setopt appendcreate
setopt globdots
setopt rmstarsilent
setopt promptsubst
setopt interactivecomments

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'
zstyle ':completion::complete:*' '\\'

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

# check file size
function fs() {
    du -sh ${1} | awk '{print $1}'
}

function batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}

local LS_COLORS='rs=0:di=01;34:ln=01;36:so=01;35:cd=40;33;01:ow=34;42'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
