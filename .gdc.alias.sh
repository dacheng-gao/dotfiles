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
  _zig16="$(brew --prefix zig@0.16)/bin/zig"
  if [ -x "$_zig16" ]; then
    alias zig16="$_zig16"
  fi
  _zig17="$(brew --prefix zig)/bin/zig"
  if [ -x "$_zig17" ]; then
    alias zig17="$_zig17"
  fi
  unset _zig16 _zig17
fi
