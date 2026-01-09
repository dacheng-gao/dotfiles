# a zsh theme (c) dacheng

# emojis: 💲🔘🔴🟠🟡🟢
# colors: %{$fg_bold[blue]%}%c%{$reset_color%}
PROMPT="🔘 %{$fg_bold[black]%}%n@%m %c %(?:%1{$%}:%{$fg[red]%}%1{$%})%{$reset_color%} "

# Variables supported in PROMPT:
# %c: just current directory
# %~: full path but replace $HOME to '~' for short
# %d: full path
# %n: username
# %m: hostname
