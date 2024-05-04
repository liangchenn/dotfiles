CONFIG_DIR = $(HOME)/.config/
DOTFILES_DIR = $(PWD)


.PHONY: link-nvim
link-nvim:
	@echo "Linking nvim configuration..."
	@mkdir -p $(CONFIG_DIR)/nvim
	@rm -rf $(CONFIG_DIR)/nvim
	@ln -s $(DOTFILES_DIR)/nvim $(CONFIG_DIR)/nvim
	@echo "Nvim is linked."


.PHONY: link-aliases
link-aliases:
	@echo "Linking nvim aliases..."
	@rm -rf $(HOME)/.bash_aliases
	@ln -s $(DOTFILES_DIR)/aliases/.bash_aliases $(CONFIG_DIR)/.bash_aliases
	@echo "Nvim aliases are linked."


.PHONY: link-gitconfig
link-gitconfig:
	@echo "Linking gitconfig..."
	@rm -rf $(HOME)/.gitconfig
	@ln -s $(DOTFILES_DIR)/git/.gitconfig $(HOME)/.gitconfig
	@echo "gitconfig is linked."