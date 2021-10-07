autoload -Uz compinit colors
compinit
colors

setopt appendhistory \
  correct \
  histexpiredupsfirst \
  histignorespace \
  histreduceblanks \
  interactivecomments \
  nobgnice \
  nolistbeep \
  printexitvalue \
  promptsubst

fpath=(
    $HOME/.local/share/zsh/zfunc
    $fpat
)

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.histfile
HISTORY_IGNORE="(clear|ls|la|lth|lh|ll|bg|fg|cd|cd -|cd ..|..*|exit|date|* --help|htop|top|path|env|printenv|startx)"

# PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%1~%b%f %# '
# RPROMPT='[%F{yellow}%?%f]'

PROMPT="%B%{$fg[blue]%}[%{$fg[green]%}%n%{$fg[yellow]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[blue]%}]%{$reset_color%}%#%b "

zmodload zsh/complist

zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
zstyle ':completion:*:man:*' menu yes select

_comp_options+=(globdots)

bindkey -v
KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

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
