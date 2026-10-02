#!/bin/sh

# set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# vi maybe an alias of vim, nvim (neovim) ...
export EDITOR=vi

if [[ -z $TMUX ]]; then
  export TERM=xterm-256color
else
  export TERM=screen-256color
fi

# zsh delay
export KEYTIMEOUT=1

# make man window not too long and not too short
export MANWIDTH=100

# Reset PATH
# for macOS: /usr/local/bin would better be in front of /bin
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin

# Add user global bin
if [[ -d $HOME/bin ]]; then
  export PATH=$HOME/bin:$PATH
fi

# Add user local bin
if [[ -d $HOME/.local/bin ]]; then
  export PATH=$HOME/.local/bin:$PATH
fi

# Add brew
if [[ -d /opt/homebrew/bin ]]; then
  export PATH=/opt/homebrew/bin:$PATH
fi

# Add JDK and JAVA_HOME
if [[ -d /opt/homebrew/opt/openjdk@25/libexec/openjdk.jdk/Contents/Home ]]; then
  export JAVA_HOME=/opt/homebrew/opt/openjdk@25/libexec/openjdk.jdk/Contents/Home
  export PATH=$JAVA_HOME/bin:$PATH
fi

# Add dotnet tools
if [[ -d $HOME/.dotnet/tools ]]; then
  export PATH=$HOME/.dotnet/tools:$PATH
fi

# Add Dart pub global tools (patrol_cli, etc.)
if [[ -d $HOME/.pub-cache/bin ]]; then
  export PATH=$HOME/.pub-cache/bin:$PATH
fi

# Unset http proxy for sure on bootstrap and use them as need
unset {http_proxy,https_proxy,no_proxy}
unset {HTTP_PROXY,HTTPS_PROXY,NO_PROXY}
