.DEFAULT_GOAL := help

LOCAL_SHARE_DIR    := ~/.local/share
NVIM_INSTALLER_DIR := $(LOCAL_SHARE_DIR)/nvim-installer
NVIM_INSTALLER_GIT := https://github.com/rustamgasanov/nvim-installer

.PHONY: help
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1 $(shell echo "\t") \2/' | sort | expand -t20

.PHONY: install # Install iterm2, tmux, zsh, font
install:
	@echo "→ Installing iterm2"
	brew upgrade --cask iterm2 || brew install --cask iterm2
	@echo "→ Installing tmux"
	brew upgrade tmux || brew install tmux
	@echo "→ Installing Oh My Zsh"
	@if [ -d $(HOME)/.oh-my-zsh ]; then \
		echo "Oh My Zsh is already installed."; \
	else \
		curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o ohmyzsh-install.sh; \
		sh ohmyzsh-install.sh --keep-zshrc; \
		rm -f ohmyzsh-install.sh; \
	fi
	@echo "→ Installing Meslo Nerd font"
	cp -n Meslo\ LG\ M\ DZ\ Regular\ Nerd\ Font\ Complete.ttf ~/Library/Fonts || :

.PHONY: install-nvim # Install tomgasaner/nvim-installer
install-nvim:
	@echo "→ Pulling nvim-installer"
	if [ -d $(NVIM_INSTALLER_DIR) ] ; then \
		cd $(NVIM_INSTALLER_DIR) && git pull $(NVIM_INSTALLER_GIT); \
	else \
		git clone $(NVIM_INSTALLER_GIT) $(NVIM_INSTALLER_DIR); \
	fi
	cd $(NVIM_INSTALLER_DIR) && make install

.PHONY: remove-nvim # Remove tomgasaner/nvim-installer
remove-nvim:
	if [ ! -d $(NVIM_INSTALLER_DIR) ] ; then \
		echo "Nvim-installer is not installed."; \
	else \
		cd $(NVIM_INSTALLER_DIR) && make remove; \
		rm -rf $(NVIM_INSTALLER_DIR); \
	fi
