#!/bin/sh

# Load environment settings.
if [ -f "$HOME/.gdc.env.sh" ]; then
  . "$HOME/.gdc.env.sh"
fi

# Load command aliases.
if [ -f "$HOME/.gdc.alias.sh" ]; then
  . "$HOME/.gdc.alias.sh"
fi

# Load color settings.
if [ -f "$HOME/.gdc.color.sh" ]; then
  . "$HOME/.gdc.color.sh"
fi

# Raise the file descriptor soft limit.
ulimit -n 65536
