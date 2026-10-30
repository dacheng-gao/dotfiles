#!/bin/sh

unalias ls
alias ls="ls --color"
alias l="ls -lhF"
alias ll="ls -lF"
alias la="ls -AF"
alias info="info --vi-keys"
alias vi="nvim"
alias less="less -R"

if command -v brew >/dev/null 2>&1; then
  if brew list --formula zig@0.16 >/dev/null 2>&1; then
    alias zig16="$(brew --prefix zig@0.16)/bin/zig"
  fi
  if brew list --formula zig >/dev/null 2>&1; then
    alias zig17="$(brew --prefix zig)/bin/zig"
  fi
fi
