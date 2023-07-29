default:
	# @ln -sf $(CURDIR)/.zshrc ~/.zshrc
	# @echo "Created System Link Here: ~/.zshrc"
	@if [ ! -d ~/.oh-my-zsh ]; then \
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
		echo "installed oh-my-zsh"; \
	fi