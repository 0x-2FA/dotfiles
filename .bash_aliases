#!/usr/bin/env bash

# Git aliases
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gct='git commit -m $1'
alias gpo='git push -u origin $1'
alias gcl='git clone'
alias gme='git merge'

### Bash aliases ###

## Directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ll='ls -alF'
alias la='ls -la'
# -> add more ls commands

## General Commands ##
alias wcl = 'wc -l'



# General use functions
mkd () {
    mkdir $1; 
    cd $1;
}

cdl () {
    cd $1;
    ll;
}