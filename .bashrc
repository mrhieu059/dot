#!/bin/sh
# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

alias xbi='doas xbps-install -S'
alias xbq="xbps-query -l | awk '{ print $2 }' | xargs -0 -n1 xbps-uhelper getpkgname"
alias xbs='xbps-query -Rs'
alias xbr='doas xbps-remove -R'
alias xbu='doas xbps-install -Su'

#Export
export PATH="$PATH:/home/cinux/.local/bin"
