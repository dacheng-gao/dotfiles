# see https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="dacheng"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
plugins=(dotnet)
source $ZSH/oh-my-zsh.sh

# load my own shell script entry
[ -f ~/.gdc.sh ] && source ~/.gdc.sh

# Restore cursor visibility after an abruptly disconnected remote session.
autoload -Uz add-zsh-hook
_restore_cursor_visibility() {
  printf '\e[?25h'
}
add-zsh-hook precmd _restore_cursor_visibility

# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
