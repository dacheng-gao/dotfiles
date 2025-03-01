help:
	@echo "make: usage"
	@echo "  make install-sh"
	@echo "  make install-ssh"
	@echo "  make install-tmux"
	@echo "  make install-vim"
	@echo "  make install-nvim"
	@echo "  make install-git"
	@echo "  make install-bin"
	@echo "  make install-alacritty"
	@echo "  make install-rio"
	@echo "  make install-rofi"
	@echo "  make install-sway"
	@echo "  make install-xsessionrc"
	@echo "  make install-autostart"
	@echo "  make install-xresource"
	@echo "  make install-fontconfig"
install-sh:
	cp .gdc.* ~
	cp .zshrc ~
	cp oh-my-zsh/themes/dacheng.zsh-theme ~/.oh-my-zsh/themes/
install-ssh:
	cp ssh/config ~/.ssh
install-tmux:
	cp -r tmux ~/.config/
install-vim:
	cp -r vim ~/.config/
install-nvim: install-vim
	cp -r nvim ~/.config/
install-git:
	cp git/* ~/.config/git
install-bin:
	cp -rp bin/* ~/bin
install-alacritty:
	cp -r alacritty ~/.config
install-rio:
	cp -r rio ~/.config
install-rofi:
	cp -r rofi ~/.config
install-sway:
	cp -r sway ~/.config
install-xsessionrc:
	cp -p .xsessionrc ~
install-autostart:
	cp -p autostart/* ~/.config/autostart
install-xresource:
	cp .Xresources ~/
	cp .Xresources ~/.Xdefaults
install-fontconfig:
	cp -r fontconfig ~/.config
