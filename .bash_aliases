#!/usr/bin/env bash


# Git aliases
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gct='git commit -m'
alias gpo='git push -u origin'
alias gcl='git clone'
alias gme='git merge'

# Bash aliases
alias ..='cd ..'
alias ...='cd ../../'
alias ll='ls -alF'
alias la='ls -la'

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