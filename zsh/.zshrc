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

fpath+=~/.zfunc

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

KEYTIMEOUT=1

PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%1~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'

bindkey -v

zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
zstyle ':completion:*:man:*' menu yes select
zstyle ':completion::complete:*' gain-privileges 1

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias md="mkdir -p"
alias ll="ls -Alh"
alias la="ls -A"
alias lh="ls -lh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias path='echo -e ${PATH//:/\\n}'
alias gaa="git add -A"
alias gst="git status -sb"
alias gcm="git commit -m"
alias gco="git checkout"
alias gph="git push"
alias gpl="git pull"
alias tn="tmux new -s"

alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
