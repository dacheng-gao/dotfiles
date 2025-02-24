# a simple zsh theme, made by dacheng

PROMPT="%{$fg[green]%}%c %(?:%1{$%}:%{$fg[red]%}%1{$%})%{$reset_color%} "

# Variables supported in PROMPT:
# %c: just current directory
# %~: full path but replace $HOME to '~' for short
# %d: full path
# %n: username
# %m: hostname
