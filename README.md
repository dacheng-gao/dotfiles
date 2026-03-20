# dotfiles

Personal dotfiles with a small `make`-based install flow. The active set is shell, terminal, editor, Git, and desktop-session configuration.

## Current Status

The following paths are active and wired into `Makefile`:

- Shell: `.gdc.*`, `.zshrc`, `oh-my-zsh/themes/dacheng.zsh-theme`
- SSH: `ssh/config`
- Terminal: `tmux/`, `ghostty/config`
- Editors: `vim/`, `nvim/`
- Git: `git/config`, `git/ignore`
- User scripts: `bin/`
- Desktop/session: `autostart/`, `.Xresources`, `fontconfig/`

The following paths are kept in the repo but are not installed by `make`:

- `docs/plans/`: design and implementation notes
- `ghostty/AGENTS.md`: repo editing guidance, not runtime config
- `supervisord.d/`: manual service snippets

## Install

Use `make help` to see the available targets.

Current install targets:

- `make install-sh`
- `make install-ssh`
- `make install-tmux`
- `make install-vim`
- `make install-nvim`
- `make install-git`
- `make install-bin`
- `make install-ghostty`
- `make install-autostart`
- `make install-xresource`
- `make install-fontconfig`

Each target now creates any required destination directory with `mkdir -p` before copying files.

## Git Local Overrides

- `git/config` is the shared baseline config.
- `~/.config/git/config.local` is included automatically for machine-specific or private overrides.
- `git/config.example` and `git/ignore.example` are templates only. They are not installed by default.

## Notes

- `vim/` is kept for classic Vim.
- `nvim/` is a standalone Neovim config.
- Runtime installs intentionally copy only runtime files. Repo-only guidance files stay in the repository.
