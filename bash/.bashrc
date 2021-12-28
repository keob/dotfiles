#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[01;32m\]\u\[\e[0m\]@\[\e[01;36m\]\h \[\e[01;34m\]\W \[\e[0m\]\$ '

HISTIGNORE="clear:ls:la:lth:lh:ll:pwd:history:cd:cd -:cd ..:..*:exit:date:htop:top:env:printenv:startx"
HISTCONTROL=ignoreboth:erasedups
HISTFILE=~/.bash_history
HISTTIMEFORMAT='%F %T '
HISTSIZE=10000

shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s lithist

# EDITOR
export EDITOR=nvim

# LESS
export LESS="-SRXF"

# GPG
export GPG_TTY=$(tty)

# TERM
export TERM="xterm-256color"

# Python
export PYTHONDONTWRITEBYTECODE=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# RG
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/ripgreprc

# Mirrors
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# Alias
alias ..="cd .."
alias ...="cd ../.."

alias md="mkdir -p"
alias ll="ls -Alh"
alias la="ls -A"
alias lh="ls -lh"
alias lth="ls -Alth"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias gaa="git add ."
alias gph="git push"
alias gpl="git pull"
alias gfh="git fetch"
alias gco="git checkout"
alias gcm="git commit -m"
alias gst="git status -sb"

alias tn="tmux new -s"

alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# Function
up () {
    local d=""
    local limit="$1"

    if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
        limit=1
    fi

    for ((i=1;i<=limit;i++)); do
        d="../$d"
    done

    if ! cd "$d"; then
        echo "Couldn't go up $limit dirs";
    fi
}

fs() {
    du -sh ${1} | awk '{print $1}'
}
