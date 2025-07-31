# a zsh theme (c) dacheng

PROMPT="%n@%m %c %{$fg_bold[black]%}%(?:%1{$%}:%{$fg[red]%}%1{$%})%{$reset_color%} "

# Variables supported in PROMPT:
# %c: just current directory
# %~: full path but replace $HOME to '~' for short
# %d: full path
# %n: username
# %m: hostname
