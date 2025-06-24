#!/usr/bin/env sh

shopt -s autocd
export PATH=~/.local/bin:$PATH

alias l='ls -la'
alias ll='ls -l'
alias lt='ls -lt'
alias le=less

take() {
  mkdir -p "$1" && cd "$1"
}

