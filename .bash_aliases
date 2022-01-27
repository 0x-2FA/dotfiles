#!/usr/bin/env bash


# Debian based aliases
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias upall='sudo apt update && sudo apt upgrade'

# Git aliases
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gct='git commit -m $1'
alias gpo='git push -u origin $1'
alias gcl='git clone $1'
alias gme='git merge'

# Bash aliases
alias ..='cd ..'
alias ...='cd ../../'
alias ll='ls -alF'
alias la='ls -la'
alias tree='tree -L 1'
alias tree2='tree -L 2'

# Custome aliases
alias nf='neofetch'

# -> add more ls commands

# General use functions
mkd () {
    mkdir $1; 
    cd $1;
}

cdl () {
    cd $1;
    ll;
}
