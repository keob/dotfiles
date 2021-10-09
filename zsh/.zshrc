unlimit
limit stack 8192
limit core 0
limit -s

fpath=($fpath ~/.zfunc)
cdpath=(.. ~ ~/repo)
# fignore=()

typeset -U path cdpath fpath

autoload -Uz compinit
compinit

autoload -Uz colors
colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.histfile
HISTORY_IGNORE="(clear|ls|la|lth|lh|ll|bg|fg|cd|cd -|cd ..|..*|exit|date|* --help|htop|top|path|env|printenv|startx)"

PROMPT="%B%{$fg[blue]%}[%{$fg[green]%}%n%{$fg[yellow]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[blue]%}]%{$reset_color%}%#%b "
# RPROMPT=""

export HELPDIR=/usr/share/zsh/$ZSH_VERSION/help
unalias run-help && autoload -Uz run-help

setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile
zmodload -aF zsh/stat b:zstat

zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro'
zstyle ':completion:*:functions' ignored-patterns '_*'

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
fs() {
    du -sh ${1} | awk '{print $1}'
}
