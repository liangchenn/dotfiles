.PHONY: link-nvim

CONFIG_DIR = $(HOME)/.config/nvim
DOTFILES_DIR = $(PWD)

link-nvim:
	@echo "Linking nvim configuration..."
	@mkdir -p $(CONFIG_DIR)
	@rm -rf $(CONFIG_DIR)
	@ln -s $(DOTFILES_DIR) $(CONFIG_DIR)
	@echo "Nvim is linked."
