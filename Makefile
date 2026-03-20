help:
	@echo "make: usage"
	@echo "  make install-sh"
	@echo "  make install-ssh"
	@echo "  make install-tmux"
	@echo "  make install-vim"
	@echo "  make install-nvim"
	@echo "  make install-git"
	@echo "  make install-bin"
	@echo "  make install-ghostty"
	@echo "  make install-autostart"
	@echo "  make install-xresource"
	@echo "  make install-fontconfig"
install-sh:
	mkdir -p ~/.oh-my-zsh/themes
	cp .gdc.* ~
	cp .zshrc ~
	cp oh-my-zsh/themes/dacheng.zsh-theme ~/.oh-my-zsh/themes/
install-ssh:
	mkdir -p ~/.ssh
	cp ssh/config ~/.ssh
install-tmux:
	mkdir -p ~/.config
	cp -r tmux ~/.config/
install-vim:
	mkdir -p ~/.config
	cp -r vim ~/.config/
install-nvim:
	mkdir -p ~/.config
	cp -r nvim ~/.config/
install-git:
	mkdir -p ~/.config/git
	cp git/config git/ignore ~/.config/git/
install-bin:
	mkdir -p ~/bin
	cp -rp bin/* ~/bin
install-ghostty:
	mkdir -p ~/.config/ghostty
	cp -p ghostty/config ~/.config/ghostty/
install-autostart:
	mkdir -p ~/.config/autostart
	cp -p autostart/* ~/.config/autostart
install-xresource:
	cp .Xresources ~/
	cp .Xresources ~/.Xdefaults
install-fontconfig:
	mkdir -p ~/.config
	cp -r fontconfig ~/.config
